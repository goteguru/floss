
-- feladat:
-- átállás id alapú módszerre
-- prop_values tárolja az összes választható propertyt
-- prop_names tárolja a nevesített tulajdonságokat.

-- hibaellenőrzés
select vid, prid, count(*) db from prop_values group by vid,prid having db>1;





SELECT zotkey, tema, subtema, (select vid FROM prop_values where prid="TOP" AND Magyar=tema) KOD from papers 
WHERE  KOD is null;

SELECT zotkey, Empirical, (select vid FROM prop_values where prid="EMP" AND Magyar=Empirical) KOD from papers 
WHERE  KOD is null;

SELECT zotkey, SubTema, (select vid FROM prop_values where prid="SUT" AND Magyar=SubTema) KOD from papers 
WHERE  KOD is null;

SELECT Property, (select prid FROM prop_names where Magyar=Property) as propkod, 
Value,	(select vid FROM prop_values where Magyar=Value) as vkod FROM properties
where Value is null ;

select * from properties where Value="GUD";
-- konvertáló lekérdezések:
-- single
UPDATE papers SET tema =      (select vid FROM prop_values where prid="TOP" AND Magyar=tema) ;
UPDATE papers SET Empirical = (select vid FROM prop_values where prid="EMP" AND Magyar=Empirical) ;
UPDATE papers SET Tipus = (select vid FROM prop_values where prid="TYP" AND Magyar=Tipus) ;
UPDATE papers SET SubTema = (select vid FROM prop_values where prid="SUT" AND Magyar=SubTema) ;
-- multi
UPDATE properties SET 
Property = (select prid FROM prop_names where Magyar=Property),
Value = (select vid FROM prop_values where Magyar=Value);


select distinct Property as prid, Property from properties; 

create table prop_values as select  DISTINCT
	"" as vid, 	prid , 	Value as value
	FROM properties 
	LEFT JOIN prop_names ON Magyar=Property		
	;
	
create table p2 as select vid, prid, value as Magyar, English from prop_values ;

Insert into prop_names select distinct property as prid, property as Magyar , property as English from ptmp ;

INSERT INTO prop_values select '' as vid, prid, ptmp.Magyar, ptmp.Magyar as English 
from ptmp left join prop_names on property=prop_names.Magyar;



SELECT ZotKey as id, Year as value FROM papers WHERE Empirical='PRI' ORDER BY value;

select * from prop_values; 


SELECT Type as id, prid, Magyar AS description FROM 
( SELECT DISTINCT Type FROM papers UNION SELECT DISTINCT Type FROM work ) 
LEFT JOIN prop_values ON vid=id WHERE prid ='Type' ORDER BY description;

select * from prop_values WHERE prid="Type"  ;


select * from papers ;


update papers 
set Year = (
 select oldpapers.Year from oldpapers where oldpapers.ZotKey = papers.ZotKey
);


-------
drop table floss1;
create table floss1 (emp  text, bib text, kat text);
select * from floss1 as a LEFT JOIN zotero_papers  as f ON (BibTeX = ltrim(bib))
WHERE Year is  NULL; --check

drop table floss2;
create table floss_properties as select trim(bib) as bib,ZotKey, trim(kat) as oldcateg, 
  CASE WHEN instr(kat,"/")=0 THEN ltrim(kat) ELSE trim(substr(kat,1, instr(kat,"/")-2)) end as categ,
  emp from zotero_papers as a JOIN floss1 as f ON (BibTeX = trim(bib));

INSERT INTO prop_values select distinct "","OSP",categ,categ  from floss2 ;

select * from properties where Property="OSP"; -- ellenőrzés
select * from prop_values where prid="TYP"; -- ellenőrzés

insert into properties  select ZotKey, "OSP" as Property,   vid as Value from floss_properties f JOIN prop_values p on (prid="OSP" and Magyar=category);
select * from properties where Property="OSP";