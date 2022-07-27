-- INNER JOIN
-- PostgreSQL INNER JOINS returns all rows from multiple tables where the join condition is met. INNER JOIN returns 
-- a result set containing a row in the left table that matches the row in the right table.

-- It returns the records where table1 and table2 intersect.

-- SELECT actors.first_name, actors.last_name, movies.movie_title
-- FROM actors
-- INNER JOIN movies
-- ON actors.actor_id = movies.actor_playing_id;

-- Here it returns all rows from the actors and movies tables 
-- where there is a matching actor_id value in both the actors and movies tables.


-- LEFT OUTER JOIN
-- The LEFT JOIN returns a complete set of rows from the left table with the matching rows 
-- if available from the right table. If there is no match, the right side will have null values.

-- SELECT actors.first_name, actors.last_name, movies.movie_title
-- FROM actors
-- LEFT OUTER JOIN movies
-- ON actors.actor_id = movies.actor_playing_id;


-- RIGHT OUTER JOIN
-- The RIGHT JOIN is a reversed version of the left join. It produces a result set 
-- that contains all rows from the right table with matching rows from the left table. 
-- If there is no match, the left side will have null values.

-- SELECT actors.first_name, actors.last_name, movies.movie_title
-- FROM actors
-- RIGHT OUTER JOIN movies
-- ON actors.actor_id = movies.actor_playing_id;


-- FULL OUTER JOIN
-- The FULL JOIN produces a result set that contains all rows from both 
-- the left and right tables, with the matching rows from both sides where available. If there is no match, the missing side contains null values.

-- SELECT actors.first_name, actors.last_name, movies.movie_title
-- FROM actors
-- FULL OUTER JOIN movies
-- ON actors.actor_id = movies.actor_playing_id;


-- EXERCISES 

CREATE TABLE actors(
 actor_id int NOT NULL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);

CREATE TABLE countries(
country_id int NOT NULL PRIMARY key,
country_name VARCHAR(50) NOT NULL
);


INSERT INTO actors values (102030,"Paul","Walker","30",5);
INSERT INTO countries VALUES (12345,"Fast and Furious");
INSERT INTO countries VALUES (56789,"Le temps d'un automne");

-- INNER JOIN
SELECT actors.first_name, actors.last_name, actors.age,actors.number_oscars
FROM actors
INNER JOIN countries
ON actors.actor_id = countries.country_id;

-- LEFT OUTER JOIN

SELECT actors.first_name, actors.last_name, actors.age,actors.number_oscars
FROM actors
INNER JOIN countries
ON actors.first_name = countries.country_name;


