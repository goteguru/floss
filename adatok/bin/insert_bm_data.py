#!/usr/bin/python3

# 
# paraméterként megadott SQLite adatbázisba tölti a CSV adatokat 
# 

import ezodf
import sys,sqlite3
from config import (DATADIR, DATABASE)

try:
    dbconn = sqlite3.connect(DATABASE)
    dbconn.execute("PRAGMA foreign_keys = 1")
except:
    print(f"\n{sys.argv[0]} database error: {DATABASE}" )
    sys.exit(1)


crs = dbconn.cursor()
crs.execute( "DELETE FROM bm41_category")
crs.execute( "DELETE FROM bm41_subcategory")

#
# ADMINISZTRATIV védelmi intézkedések
#
doc = ezodf.opendoc(DATADIR+"BM-41/adminisztratív-védelmi-intézkedések.ods")
sheet = doc.sheets[0]
for rownum, cellist in enumerate(sheet.rows()):
    if rownum < 3: continue # skip header
    x, l1, l2, *rest = cellist[1].value.split('.')
    rest = [x.strip() for x in rest]
    desc = cellist[2].value.strip()
    assert x == '3' 
    if rest[0] == '': # level2
        q = "INSERT INTO bm41_category (bml1, bml2, bmdesc) VALUES (?,?,?)"
        crs.execute(q, (l1,l2,desc))
        continue

    l3 = '.'.join(rest)
    minlevel = len([x.value for x in cellist[3:8] if x.value!='X']) + 1
    q = """INSERT INTO bm41_subcategory (bml1, bml2, bml3, minlevel1, bmdesc) 
            VALUES (?,?,?,?,?)"""
    crs.execute(q, (int(l1), int(l2), l3, minlevel, desc))

#
# LOGIKAI védelmi intézkedések
#
doc = ezodf.opendoc(DATADIR+"BM-41/logikai-védelmi-intézkedések.ods")
sheet = doc.sheets[0]
for rownum, cellist in enumerate(sheet.rows()):
    if rownum < 5: continue # skip header
    x, l1, l2, *rest = cellist[1].value.split('.')
    rest = [x.strip() for x in rest]
    desc = cellist[2].value.strip()
    assert x == '3' 
    if rest[0] == '': # level2
        q = "INSERT INTO bm41_category (bml1, bml2, bmdesc) VALUES (?,?,?)"
        crs.execute(q, (l1,l2,desc))
        continue

    l3 = '.'.join(rest)
    minlevel1 = len([x.value for x in cellist[3:7] if x.value!='X']) + 2
    minlevel2 = len([x.value for x in cellist[7:11] if x.value!='X']) + 2
    minlevel3 = len([x.value for x in cellist[11:15] if x.value!='X']) + 2
    q = """INSERT INTO bm41_subcategory 
            (bml1, bml2, bml3, minlevel1, minlevel2, minlevel3, bmdesc) 
            VALUES (?,?,?,?,?,?,?)"""
    crs.execute(q, (int(l1), int(l2), l3, minlevel1, minlevel2, minlevel3, desc))


dbconn.commit()
