SELECT * FROM link;
INSERT INTO link(url,name) VALUES('www.google.com','google');
INSERT INTO link(url,name) VALUES('www.yahoo.com','Yahoo');
INSERT INTO link(url,name) VALUES('www.facebook.com','Facebook'),('www.bing.com','Bing');


--How to create a copy of other table. 
--PLEASE NOTE THAT ONLY SCHEMA IS COPIED
CREATE TABLE link_copy(LIKE link);
--INSERT data from other table.
INSERT INTO link_copy 
SELECT * FROM link WHERE name ='google';

INSERT INTO link_copy 
SELECT * FROM link WHERE name ILIKE 'bing';


--UPDATE DATA
SELECT * FROM link;
UPDATE link SET description ='testing';

--UPDATE DATA USING CONDITIONS
SELECT * FROM link;
UPDATE link SET description ='Name starts with an f' WHERE name ILIKE 'f%';


--SET ONE COLUMN TYPE EQUAL TO ANOTHER ONE
UPDATE link SET description = name;

--RETURN DATA IMMEDIATELY
UPDATE link SET description ='New desc' WHERE name='google'
RETURNING id,name,description,rel;

--DELETE
DELETE FROM link WHERE name ILIKE 'B%' RETURNING *;



