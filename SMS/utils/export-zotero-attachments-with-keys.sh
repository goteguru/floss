#!/bin/bash


DB="/home/monk/.zotero/zotero/o0zx3fdp.default/zotero/zotero.sqlite"
TMPDB="/tmp/zotero.temp"
TARGETDB="./database/paper.sqlite"

cp $DB $TMPDB

sqlite3 $TMPDB <<SQL

-- attach db
ATTACH DATABASE '$TARGETDB' AS 'tg';

-- all Zotero attachments with path: 

CREATE TABLE tg.attachments AS 
SELECT i.key itemKey, a.key attKey, 
replace(path,"storage:",a.key||'/') AS path
FROM
 items as i join itemattachments as ax on ax.sourceItemID=i.itemID
  join items as a on ax.itemId=a.itemID
  ;
SQL



exit 0
