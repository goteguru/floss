DROP TABLE IF EXISTS category;
CREATE TABLE category (
	cid	TEXT, -- Category id
	des	TEXT  -- description
);

DROP TABLE IF EXISTS speciality;
CREATE TABLE speciality (
	sid	TEXT, -- speciality id
	des	TEXT,  -- description
	PRIMARY KEY (sid)
);

DROP TABLE IF EXISTS vulnerability;
CREATE TABLE vulnerability (
	vid	TEXT, -- vulnerability id
	lev	INT,  -- user level
	des	TEXT, -- description
	sid	TEXT, -- relevant subcategory id (FK)
	PRIMARY KEY (vid)
	CONSTRAINT fk_sid
		FOREIGN KEY (sid) REFERENCES subcategory (sid)
);

DROP TABLE IF EXISTS mitigation;
CREATE TABLE mitigation (
	mid	TEXT, -- mitigation id
	lev	INT,  -- user level
	des	TEXT,  -- description
	PRIMARY KEY (mid)
);

DROP TABLE IF EXISTS m2v;
CREATE TABLE m2v (  -- mitigation - vulnerability relationship
	mid	TEXT,
	vid	TEXT,
	CONSTRAINT fk_mid
		FOREIGN KEY (mid) REFERENCES mitigation (mid)
	CONSTRAINT fk_vid
		FOREIGN KEY (vid) REFERENCES vulnerability (vid)
);

-- NIST Cybersecurity framework categories
DROP TABLE IF EXISTS nist_function;
CREATE TABLE nist_function (  
	fid	TEXT,	--function id
	fdesc	TEXT, 	--function description
	PRIMARY KEY (fid)
);
DROP TABLE IF EXISTS nist_category;
CREATE TABLE nist_category (  
	fid	TEXT,	--function id
	cid	TEXT,	--category id
	ctitle	TEXT, 	--category title
	cdesc	TEXT, 	--category description
	PRIMARY KEY (fid,cid)
	CONSTRAINT fk_nist_category_function
		FOREIGN KEY (fid) REFERENCES nist_function (fid)
);
DROP TABLE IF EXISTS nist_subcategory;
CREATE TABLE nist_subcategory (  
	fid	TEXT,	--function id
	cid	TEXT,	--category id
	scid	TEXT,	--subcategory id
	scdesc	TEXT, 	--subcategory description
	PRIMARY KEY (fid,cid,scid)
	CONSTRAINT fk_nist_subcategory_category
		FOREIGN KEY (fid,cid) REFERENCES nist_category (fid,cid)
);

-- action  by Nist
DROP TABLE IF EXISTS action;
CREATE TABLE action (  
	aid	TEXT, 	--action id
	fid	TEXT,	--function id
	cid	TEXT,	--category id
	scid	TEXT,	--subcategory id
	adesc	TEXT, 	--action description
	areason	TEXT, 	--action reasoning
	PRIMARY KEY (aid)
	CONSTRAINT fk_action_subcategory
		FOREIGN KEY (fid,cid,scid) REFERENCES nist_subcategory (fid,cid,scid)
);

-- action to vulnerability
CREATE TABLE a2v (  -- action - vulnerability relationship
	aid	TEXT,
	vid	TEXT,
	PRIMARY KEY (aid,vid)
	CONSTRAINT fk_a2v_aid
		FOREIGN KEY (aid) REFERENCES action (aid)
	CONSTRAINT fk_a2v_vid
		FOREIGN KEY (vid) REFERENCES vulnerability (vid)
);

--  action to mitigation
CREATE TABLE a2m (  -- action - mitigation relationship
	aid	TEXT,
	mid	TEXT,
	PRIMARY KEY (aid,mid)
	CONSTRAINT fk_a2m_aid
		FOREIGN KEY (aid) REFERENCES action (aid)
	CONSTRAINT fk_a2m_mid
		FOREIGN KEY (mid) REFERENCES mitigation (mid)
);

--  action to bm41
CREATE TABLE a2bm41 (  -- action - bm41 subcategory relationship
	bml1	int,
	bml2	int,
	bml3	TEXT,
	aid	TEXT,
	refid	text, -- additional legal reference id (code)
	reftxt	text, -- additional legal reference (text)
	PRIMARY KEY (refid,aid)
	CONSTRAINT fk_a2mb41_aid
		FOREIGN KEY (aid) REFERENCES action (aid)
	CONSTRAINT fk_a2bm41_bmlevelid
		FOREIGN KEY (bml1,bml2,bml3) REFERENCES bm41_subcategory (bml1,bml2,bml3)
);

CREATE TABLE bm41_category (  -- bm41 categories
	bml1	int,
	bml2	int,
	bmdesc	text,
	PRIMARY KEY (bml1,bml2)
);

CREATE TABLE bm41_subcategory (  -- bm41 subcategories
	bml1	int,
	bml2	int,
	bml3	TEXT,
	bmdesc	TEXT,
	minlevel1 BYTE NOT NULL, -- first mandatory level 1-5 (6=optional)
	minlevel2 BYTE NULL,
	minlevel3 BYTE NULL,
	CHECK (minlevel1<7 AND minlevel2<7 AND minlevel3<7)
	PRIMARY KEY (bml1,bml2,bml3)
	CONSTRAINT fk_bm41_subcateg_categ 
		FOREIGN KEY (bml1,bml2) REFERENCES bm41_category(bml1,bml2)
);


.mode tabs
.import FLOSS_sajátosságok_level_1.csv category
.import FLOSS_sajátosságok_level_2.csv speciality
