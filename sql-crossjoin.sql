--Backgrounds & Furs
CREATE TABLE crossjoin1 (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin1 (name)
SELECT * FROM (
    SELECT t1.name || ';' || t2.name AS name
    FROM backgrounds t1
    CROSS JOIN furs t2
) AS dt1;
 
--SELECT * FROM crossjoin1;
SELECT COUNT(*) FROM crossjoin1;
 
--Backgrounds & Furs & Clothes
CREATE TABLE crossjoin2 (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin2 (name)
SELECT * FROM (
    SELECT t1.name || ';' || t2.name AS name
    FROM crossjoin1 t1
    CROSS JOIN clothes t2
) AS dt1;
 
--SELECT * FROM crossjoin2;
SELECT COUNT(*) FROM crossjoin2;
 
--Backgrounds & Furs & Clothes & Eyes
CREATE TABLE crossjoin3 (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin3 (name)
SELECT * FROM (
    SELECT t1.name || ';' || t2.name AS name
    FROM crossjoin2 t1
    CROSS JOIN eyes t2
) AS dt1;
 
--SELECT * FROM crossjoin3;
SELECT COUNT(*) FROM crossjoin3;
 
--Backgrounds & Furs & Clothes & Eyes & Accessories
CREATE TABLE crossjoin4 (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin4 (name)
SELECT * FROM (
    SELECT t1.name || ';' || t2.name AS name
    FROM crossjoin3 t1
    CROSS JOIN accessories t2
) AS dt1;
 
--SELECT * FROM crossjoin4;
SELECT COUNT(*) FROM crossjoin4;
 
--Backgrounds & Furs & Clothes & Eyes & Accessories & Noses
CREATE TABLE crossjoin5 (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin5 (name)
SELECT * FROM (
    SELECT t1.name || ';' || t2.name AS name
    FROM crossjoin4 t1
    CROSS JOIN noses t2
) AS dt1;
 
--SELECT * FROM crossjoin5;
SELECT COUNT(*) FROM crossjoin5;
 
--Backgrounds & Furs & Clothes & Eyes & Accessories & Noses & Hats (ALL)
--Pick out a random 6631 rows and CROSS JOIN those
CREATE TABLE crossjoin6 (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin6 (name)
SELECT * FROM (
    SELECT *
    FROM crossjoin5
    ORDER BY RANDOM()
    LIMIT 6631
) AS dt1;
 
SELECT * FROM crossjoin6;
SELECT COUNT(*) FROM crossjoin6;
 
-- Do the final CROSS JOIN on the random selection above
CREATE TABLE crossjoin_final (
   name TEXT PRIMARY KEY NOT NULL
);
 
INSERT INTO crossjoin_final (name)
SELECT * FROM (
    SELECT t1.name || ';' || t2.name AS name
    FROM crossjoin6 t1
    CROSS JOIN hats t2
) AS dt1;
 
SELECT COUNT(*) FROM crossjoin_final;
 
--Get the desired number again
SELECT DISTINCT(name)
FROM crossjoin_final
ORDER BY RANDOM()
LIMIT 6631
;