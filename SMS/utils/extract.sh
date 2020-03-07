#!/bin/bash

EATTR=/tmp/extracted-attributes.tsv
cat google-papers.tsv.csv | extractor > $EATTR

sqlite3 database/paper.sqlite <<SQL
drop table properties;
.mode csv
.separator "\\t"
.import $EATTR properties
SQL
