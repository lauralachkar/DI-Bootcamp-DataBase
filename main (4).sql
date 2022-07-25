-- An aggregate function is a special kind of function that operates 
-- on several rows of a query at once, returning a single result.

-- avg(expression)	Returns the average of the expression values from 
-- all rows in a group.
-- count(expression) Returns the number of values, per each aggregated group of 
-- rows, for which expression is not NULL
-- max(expression)	Returns the maximum value of expression in the grouped rows
-- min(expression)	Returns the minimum value of expression in the grouped rows
-- stddev(expression)	Returns the standard deviation of the values of expression in the grouped rows
-- sum(expression)	Returns the sum of the values of expression in the grouped rows
-- variance(expression)	Returns the variance of the values of expression in the grouped rows

-- SQL aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);

INSERT INTO actors VALUES (2535533,'Monica','Belluchi','10-05-10',3);

-- SQL aliases
SELECT first_name AS name_actor from actors;

--  Average
SELECT avg(number_oscars) AS average_number_oscars FROM actors;

--  Count
SELECT count(first_name) AS name_actor FROM actors;

-- Get the number of actors
SELECT count(*) FROM actors;

-- Get the maximum number of oscars
SELECT max(number_oscars) AS best_actor FROM actors;

-- Get the minimum number of oscars
SELECT min(number_oscars) AS worst_actor FROM actors;

-- Get the sum of the oscars
SELECT sum(number_oscars) AS total_oscars FROM actors;

-- L’utilisation de la commande SELECT en SQL permet de lire toutes les données d’une ou 
-- plusieurs colonnes. Cette commande peut potentiellement afficher des lignes en doubles. 
-- Pour éviter des redondances dans les résultats il faut simplement ajouter DISTINCT après 
-- le mot SELECT.

SELECT
   DISTINCT first_name
FROM
   actors;

SELECT DISTINCT first_name FROM actors ORDER BY first_name DESC;

-- You use the IN operator in the WHERE clause to check if a value matches any value in a list of values. 
-- The syntax of the IN operator is as follows:

SELECT * FROM actors WHERE first_name in ('Matt','Lea','Davis');
SELECT * FROM actors WHERE first_name not in ('Matt','Lea','Davis');

-- You use the BETWEEN operator to match a value against a range of values. 
-- The following illustrates the syntax of the BETWEEN operator:

SELECT * FROM actors WHERE age between '1961-01-01' and '1962-01-01';

-- The GROUP BY clause divides the rows returned from the SELECT statement into groups. For each group, you can apply an aggregate function e.g., SUM() to calculate the sum of items or COUNT() to get 
-- the number of items in the groups.
-- The GROUP BY clause must appear right after the FROM or WHERE clause. Following the GROUP BY clause is one column or a list of comma-separated columns.

-- Aggregate functions are generally only used in queries which make use of the GROUP BY clause to associate rows together by criteria.

INSERT INTO actors (first_name, last_name, age, number_oscars) VALUES('George','Clooney','06/05/1961 ', 1);
SELECT first_name, last_name, sum(number_oscars) FROM actors GROUP BY first_name, last_name;

SELECT first_name, last_name, sum(number_oscars) FROM actors GROUP BY first_name, last_name 
ORDER BY min(number_oscars);

-- Exercises
SELECT avg(number_oscars) AS average_number_oscars FROM actors;
SELECT DISTINCT number_oscars FROM actors ORDER BY number_oscars;
SELECT * FROM actors WHERE age > '01/01/1970';
SELECT * FROM actors WHERE first_name in ('David', 'Morgan','Will');

