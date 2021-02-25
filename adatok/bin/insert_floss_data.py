#!/usr/bin/python3

# 
# SQLite adatbázisba tölti a CSV adatokat 
# 
import sys,sqlite3
from config import DATADIR, DATABASE
vul_file = DATADIR+"FLOSS_sérülékenységek.csv"
mit_file = DATADIR+"FLOSS_javaslatok.csv"

try:
    connection = sqlite3.connect(DATABASE)
except:
    sys.exit(1)

def strip(x): return x.strip()

vuls = ([strip(x.replace('"','')) for x in line.split('|')] for line in open(vul_file) )

db = connection.cursor()
db.execute("DELETE FROM vulnerability;")
for vid, level, desc, cat in vuls:
    db.execute("INSERT INTO vulnerability (vid, lev, des, sid) VALUES (?,?,?,?)", (vid, level, desc, cat))

mitigs = ( list(map(lambda x: x.strip(), line.split('|'))) for line in open(mit_file) )
db.execute("DELETE FROM mitigation;")
db.execute("DELETE FROM m2v;")

for (mid, level, desc, vtxt) in mitigs:
    vs = filter(lambda x: x not in ["","-"], map(strip, vtxt.split(',')))
    db.execute("INSERT INTO mitigation (mid,lev,des) VALUES (?,?,?)", (mid,level,desc))
    for vid in vs:
        db.execute("INSERT INTO m2v VALUES (?,?)", (mid,vid))

#------------- Analysis ----------------

for res in db.execute("SELECT vid, count(*) mitdb, des from m2v LEFT JOIN vulnerability USING(vid) GROUP BY vid;"):
    print(res)

connection.commit()
connection.close()


