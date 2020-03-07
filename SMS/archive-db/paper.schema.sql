CREATE TABLE Tipus(Tipus TEXT, id INT);
CREATE TABLE google(
  "InsertDate" TEXT,
  "BibTex" TEXT,
  "Tipus" TEXT,
  "Biztonsag" TEXT,
  "Tulajdonsag" TEXT,
  "Flags" TEXT,
  "Empirical" TEXT,
  "Modszertan" TEXT,
  "Tema" TEXT,
  "Cel" TEXT,
  "Contrib" TEXT
);
CREATE TABLE ugoogle(
  ZotKey TEXT,
  InsertDate TEXT,
  BibTex TEXT,
  Tipus TEXT,
  Biztonsag TEXT,
  Tulajdonsag TEXT,
  Flags TEXT,
  Empirical TEXT,
  Modszertan TEXT,
  Tema TEXT,
  Cel TEXT,
  Contrib TEXT
);
CREATE TABLE Zotero_papers (
    "ZotKey" TEXT,
    "BibTeX" TEXT,
    "Year" TEXT,
    "Author" TEXT,
    "Title" TEXT,
    "ShortTitle" TEXT,
    "Tags" TEXT
);
CREATE TABLE "oldpapers"(
  ZotKey TEXT,
  InsertDate TEXT,
  BibTex TEXT,
  Tipus TEXT,
  Empirical TEXT,
  Tema TEXT,
  Cel TEXT,
  Year TEXT,
  Author TEXT,
  Title TEXT,
  ShortTitle TEXT
);
CREATE TABLE teszt(
  ZotKey TEXT,
  InsertDate TEXT,
  BibTex TEXT,
  Tipus TEXT,
  Empirical TEXT,
  Tema TEXT,
  Cel TEXT,
  Year TEXT,
  Author TEXT,
  Title TEXT,
  ShortTitle TEXT
);
CREATE TABLE attachments(
  itemKey TEXT,
  attKey TEXT,
  path
);
CREATE TABLE properties(
  ZotKey TEXT,
  Property TEXT,
  Value TEXT
);
CREATE TABLE work(
  ZotKey TEXT,
  InsertDate TEXT,
  BibTex TEXT,
  Tipus TEXT,
  Empirical TEXT,
  Tema TEXT,
  SubTema TEXT,
  Cel TEXT,
  Year TEXT,
  Author TEXT,
  Title TEXT,
  ShortTitle TEXT
);
CREATE TABLE propwork(
  ZotKey TEXT,
  Property TEXT,
  Value TEXT
);
CREATE TABLE "papers"(
ZotKey TEXT primary key, InsertDate TEXT,
BibTex TEXT,
  Tipus TEXT,
  Empirical TEXT,
  Tema TEXT,
  SubTema TEXT,
  Cel TEXT,
  Year INT,
  Author TEXT,
 Title TEXT,
 ShortTitle TEXT
 );
CREATE INDEX ix_properites_zotkey ON properties (ZotKey);
CREATE VIEW propView as select ZotKey, 'Tipus' as Property, Tipus as Value from papers UNION ALL select ZotKey, 'Tema' as Property, Tema as Value from papers  UNION select ZotKey, 'Empirical' as Property, Empirical As Value from papers UNION select * from properties;
CREATE VIEW crossCategories as with cats as (select distinct Property from propView) select a.Property as categ1, b.Property as categ2, a.value val1, b.value val2, count(*) as db from cats c1 JOIN cats c2 LEFT JOIN  propView a ON (c1.Property=a.Property) LEFT JOIN propView b ON (c2.property=b.Property AND a.ZotKey=b.ZotKey)  GROUP BY a.property, b.property, a.value, b.value;
CREATE INDEX ix_properties_prop ON properties (Property);
CREATE INDEX ix_properties_val ON properties (Value);
