#!/usr/bin/python3
from sys import argv,exit
import sqlite3
from szabvanyok import SecPol
from config import DATADIR 

DATABASE = f"{DATADIR}/floss.sqlite"


con= sqlite3.connect(DATABASE);


pol = { i: [ x for x in xs if x[0:3] in ["NIS","COB"] ] for i, xs in SecPol.items()}
for fid, fdesc in con.cursor().execute("SELECT fid, fdesc FROM nist_function"):
        print(f"\n## {fdesc} ({fid})")
        q = "SELECT cid, ctitle, cdesc FROM nist_category WHERE fid=?"
        for cid, ctitle, cdesc in con.cursor().execute(q, (fid,)):
            print(f"\n### {ctitle} ({fid}.{cid})\n")
            print(f" {cdesc}\n")
            q = """SELECT  aid, adesc, areason, scid, scdesc, 
                    replace(GROUP_CONCAT(DISTINCT '3.'||bml1||'.'||bml2||'.'||bml3),',',', ') as bmids,
                    replace(GROUP_CONCAT(DISTINCT mid),',',', ') as mids,
                    replace(GROUP_CONCAT(DISTINCT vid),',',', ') as vids
                    FROM nist_subcategory 
                    LEFT JOIN action USING(fid,cid,scid) 
                    LEFT JOIN a2bm41 USING(aid) 
                    LEFT JOIN a2v USING(aid) 
                    LEFT JOIN a2m USING(aid) 
                    WHERE fid=? AND cid=?
                    GROUP BY aid
                    ORDER BY aid, mid, vid
                    """
            for aid, adesc, areason, scid, scdesc, bmids, mids, vids in con.cursor().execute(q, (fid, cid)):
                try:
                    sk = f"{fid}.{cid}-{scid}"
                    print("<div>")
                    print( "|               |                                                                            |")
                    print( "|:--------------|:---------------------------------------------------------------------------|")
                    print(f"**{aid}**|{adesc}|")
                    print(f"| **Keretrendszer:**| {sk} ({','.join(pol[sk])})|")
                    if (vids): 
                        print(f"| **Vonatkozó problémák:**| {vids} |")
                    if (mids): 
                        print(f"| **Javaslatok:**| {mids} |")
                    if (bmids): 
                        print(f"| **Szabályozás:**| {bmids} |")
                    print()
                    print("**Indoklás: **", areason)
                    print("</div>")
                except Exception as e:
                    print ("-----------HOPPÁ---------")
                    print ("fid:",fid,"\ncategory:",cid)
                    print ("effect:",aid)
                    raise e





