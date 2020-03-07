#!/usr/bin/python3
"""
Insert nist data into the database
"""
import sys 
import sqlite3
import ezodf

from config import DATADIR, DATABASE
src_nist = DATADIR+"NIST-Cybersecurity-framework-FLOSS.ods"

try:
    connection = sqlite3.connect(DATABASE)
    db = connection.cursor()
except:
    sys.exit(1)


# ------------ load nist data ---------------

try:
    doc = ezodf.opendoc(src_nist)
    sheet = doc.sheets[0]
except: 
    print(f"can not open {src_nist}")

c1 = "unknown"
c2 = "unknown"
c3 = "unknown"

data = {}

def add_data(data,a,b,c,value):
    if a not in data:
        data[a] = {}
    if b not in data[a]:
        data[a][b] = {}
    if c not in data[a][b]:
        data[a][b][c] = []
    data[a][b][c].append(value)

def tolist(textlist):
    """ ' a, b,c,d,   e,f  ' -> [a, b, c, d, e, f]"""
    return [x.strip() for x in textlist.split(",")] if textlist else []

db.execute("DELETE FROM a2m;")
db.execute("DELETE FROM a2v;")
db.execute("DELETE FROM a2bm41;")
db.execute("DELETE FROM action;")
db.execute("DELETE FROM nist_function;")
db.execute("DELETE FROM nist_category;")
db.execute("DELETE FROM nist_subcategory;")
db.execute("PRAGMA foreign_keys = 1")

for rownum, cellist in enumerate(sheet.rows()):
    if rownum == 0 : continue # skipp header
    if cellist[0].value is not None: c1 = cellist[0].value
    if cellist[1].value is not None: c2 = cellist[1].value
    if cellist[2].value is not None: c3 = cellist[2].value

    info = [c.value.strip() if c.value else None for c in cellist[3:]]
    if not any(info): continue # skip empty rows
    add_data(data, c1,c2,c3, info)
        
## --------------- read bm41 codes from DB ---------------
bm41 = {1: {}, 3:{}}
for l1,l2,l3 in db.execute("select bml1, bml2, bml3 from bm41_subcategory"):
    if l2 not in bm41[l1]:
       bm41[l1][l2] = [] 
    bm41[l1][l2].append(l3)

## --------------- Read bm41 extra text from spreadsheet -------------

sheet = ezodf.opendoc(DATADIR+"BM-41/BM-41-2015.ods").sheets[0]

bm41txt = {}
last = None

for rownum, cellist in enumerate(sheet.rows()):
    if rownum == 0 : continue # skipp header
    code, text = cellist[0].value, cellist[1].value
    if not text: continue
    if not code:
        bm41txt[last] = bm41txt[last] + text
        continue
    code = code+'.'
    bm41txt[code] = text
    last = code

### -------------- load NIST data from spreadsheets. ------------------------

for function,categories in data.items():
        fdesc, fid = function.split("(")
        fdesc, fid = fdesc.strip(),  fid.split(")")[0].strip()
        db.execute("INSERT INTO nist_function (fid, fdesc) VALUES (?,?)", (fid, fdesc))
        counter=1
        for category, subcategories in categories.items():
            temp, cdesc = category.split("):")
            temp, cid = temp.split(".")
            ctitle, fidcopy = temp.split("(")
            assert fidcopy == fid
            db.execute("INSERT INTO nist_category (fid, cid, ctitle, cdesc) VALUES (?, ?,?,?)", 
                       (fid, cid, ctitle.strip(), cdesc.strip()))

            for subcategory, effects in subcategories.items():
                temp1 , scdesc = subcategory.split(":")
                fidcopy, temp2 = temp1.split(".")
                cidcopy, scid = temp2.split("-")
                assert fidcopy == fid
                assert cidcopy == cid
                db.execute( "INSERT INTO nist_subcategory (fid, cid, scid, scdesc) VALUES (?,?,?,?)",
                            (fid, cid, scid, scdesc.strip()))

                for effect in effects:
                    aid = f"V{fid}{counter:02}"
                    hatas, indok, problema, javaslat, bm = effect[:5]
                    problema, javaslat, bm = tolist(problema), tolist(javaslat), tolist(bm)

                    print(f"processing {fid}.{cid}-{scid}->{aid}")

                    db.execute( "INSERT INTO action (aid, fid, cid, scid, adesc, areason) VALUES (?,?,?,?,?,?)",
                            (aid, fid, cid, scid, hatas.strip(), indok.strip()))
                
                    for bmid in bm:
                        x, bml1, bml2, *rest = bmid.split('.')
                        assert x=='3'

                        bml1,bml2,bml3 = int(bml1), int(bml2), '.'.join(rest)
                        while bml3 not in bm41[bml1][bml2]: 
                            rest = rest[:-1]
                            if len(rest) == 0: 
                                raise RuntimeError("unknown bm id:", bmid)
                            bml3 = '.'.join(rest) + '.'

                        reftxt = bm41txt[bmid]
                        try:
                            db.execute("""INSERT INTO a2bm41 (aid, bml1, bml2, bml3, refid, reftxt)
                            VALUES (?,?,?,?,?,?)""", (aid, bml1, bml2, bml3, bmid, reftxt))
                        except sqlite3.IntegrityError:
                            print(f"offending key:{(aid,  bmid)}")

                    for vid in problema:
                        try:
                            db.execute("INSERT INTO a2v (aid, vid) VALUES (?,?)", (aid, vid))
                        except sqlite3.IntegrityError:
                            print(f"offending key:{(aid,  vid)}")


                    for mid in javaslat:
                        try:
                            db.execute("INSERT INTO a2m (aid, mid) VALUES (?,?)", (aid, mid))
                        except sqlite3.IntegrityError:
                            print(f"offending key:{(aid,  mid)}")

                    counter+=1


connection.commit()
connection.close()
