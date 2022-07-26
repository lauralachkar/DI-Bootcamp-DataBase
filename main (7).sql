CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);

-- Update, Delete, Alter

-- To change the values of the records in a table, you use the UPDATE statement.

INSERT INTO actors VALUES (2535533,'Matt','Damon','10-05-10',3);
INSERT INTO actors VALUES (3456666,'George','Clooney','11-07-01',2);
SELECT * from actors;

UPDATE actors 
SET age='1970-01-01' 
WHERE first_name='Matt' AND last_name='Damon'
RETURNING 
    actor_id,
    first_name, 
    last_name,
    age,
    number_oscars;

-- To delete data from a table, you use PostgreSQL DELETE statement.
-- DELETE FROM actors;

-- You can also return the deleted record using RETURNING
DELETE FROM actors WHERE actor_id=4
RETURNING actor_id, first_name, last_name, number_oscars;

-- ALTER A Table
-- To change the existing table structure, you use PostgreSQL ALTER TABLE statement.

-- Add a new column
-- ALTER TABLE table_name ADD COLUMN new_column_name TYPE;

-- Remove an existing column
-- ALTER TABLE table_name DROP COLUMN column_name;


-- Rename an existing column
-- ALTER TABLE table_name RENAME COLUMN column_name TO new_column_name;


-- Rename a table
-- ALTER TABLE table_name RENAME TO new_table_name;


-- Change the data type of a column
-- ALTER TABLE table_name
-- ALTER COLUMN column_name1 [SET DATA] TYPE new_data_type;
-- ALTER COLUMN column_name2 [SET DATA] TYPE new_data_type;

-- DROP A Table
-- To remove an existing table from the database, you use the DROP TABLE statement.

-- DROP TABLE IF EXISTS table_name;

-- Exercises 


UPDATE actors 
SET first_name='Matty' 
WHERE first_name='Matt' AND last_name='Damon'
RETURNING 
    actor_id,
    first_name, 
    last_name,
    age,
    number_oscars;

UPDATE actors 
SET number_oscars=4 
WHERE first_name='George' AND last_name='Clooney'
RETURNING 
    actor_id,
    first_name, 
    last_name,
    age, 
    number_oscars;


    
    
    