CREATE TABLE FirstTab (
     id integer, 
     name VARCHAR(10)
);

INSERT INTO FirstTab VALUES (5,'Pawan');
INSERT INTO FirstTab VALUES (6,'Sharlee');
INSERT INTO FirstTab VALUES(7,'Krish');
INSERT INTO FirstTab VALUES (NULL,'Avtaar');

SELECT * FROM FirstTab;

CREATE TABLE SecondTab (
    id integer 
);

INSERT INTO SecondTab VALUES (5);
INSERT INTO SecondTab VALUES (NULL);


SELECT * FROM SecondTab;

SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );
-- The result will be 0

SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 );
-- The result will be 2 

SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab );
-- The result will be 0

SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL );
-- The result will be 2 
