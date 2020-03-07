#!/usr/bin/python3
"""
Create F4 base scratch  (from db)
"""
from sys import argv,exit
from szabvanyok import SecPol
import sqlite3
from config import DATADIR
DBPATH = f"{DATADIR}/floss.sqlite"

try:
    conn = sqlite3.connect(DBPATH)
    dbc = conn.cursor
except:
    print(f"Database not found: {DBPATH}")
    sys.exit(1)

q="""
    SELECT  
            bml1, bml2, bml3, 
            bm41_category.bmdesc as cdesc,
            bm41_subcategory.bmdesc as scdesc
    FROM bm41_category 
        INNER JOIN bm41_subcategory USING (bml1,bml2)
        INNER JOIN a2bm41 USING (bml1,bml2,bml3)
        INNER JOIN action USING (aid)
    GROUP BY bml1,bml2,bml3
    ORDER BY bml1,bml2
    """
prevcat = (None, None)
prevsubcat = (None, None, None)
for bml1,bml2,bml3,cdesc,scdesc in dbc().execute(q):

    if prevcat != (bml1,bml2):
        print(f"\n## {cdesc}\n(3.{bml1}.{bml2}) \n")
        prevcat = (bml1,bml2)

    if prevsubcat != (bml1,bml2,bml3):
        print(f"\n### {scdesc}\n(3.{bml1}.{bml2}.{bml3})\n")
        prevsubcat = (bml1,bml2,bml3)

    q="""SELECT  
            aid, adesc, areason, refid, reftxt
        FROM a2bm41 INNER JOIN action USING (aid)
        WHERE bml1=? AND bml2=? AND bml3=?
        GROUP BY aid
        """
    for aid, adesc, areason, refid, reftxt in dbc().execute(q, (bml1,bml2,bml3)):
        print(f"{aid} {adesc} {areason}\n")
        if reftxt:
            print(f"({refid}:{reftxt})\n")

        q="""SELECT mid, mitigation.des 
            FROM a2m JOIN mitigation using(mid)
            WHERE aid=? 
            """
        for mid, mdesc in dbc().execute(q, (aid,)):
            print(f"\t{mid} {mdesc}")
        
        q="""SELECT vid, des 
            FROM a2v JOIN vulnerability using(vid)
            WHERE aid=? 
            """
        for vid, vdesc in dbc().execute(q, (aid,)):
            print(f"\t{vid} {vdesc}")


    
