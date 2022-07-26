
CREATE TABLE movies(
movie_id SERIAL,
movie_title VARCHAR (50) NOT NULL,
movie_story TEXT,
actor_playing_id INTEGER,
PRIMARY KEY (movie_id),
FOREIGN KEY (actor_playing_id) REFERENCES actors (actor_id)
);

CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);

INSERT INTO movies (movie_title, movie_story, actor_playing_id) VALUES
    ( 'Good Will Hunting', 
    'Written by Affleck and Damon, the film follows 20-year-old South Boston janitor Will Hunting',
    (SELECT actor_id from actors WHERE first_name='Matt' AND last_name='Damon')),
    ( 'Oceans Eleven', 
    'American heist film directed by Steven Soderbergh and written by Ted Griffin.', 
    (SELECT actor_id from actors WHERE first_name='Matt' AND last_name='Damon'));

-- Joining allows you to relate data in one table to the data in other tables. There are several kinds of joins that includeINNER JOIN, OUTER JOIN and self-join. Today we will focus on the INNER JOIN.
-- The INNER JOIN keyword selects records that have matching values in both tables.
-- To join actors table to movies table:
-- First, you specify the column in both tables from which you want to select data, in the SELECT clause
-- Second, you specify the main table, i.e. actors in the FROM clause.
-- Third, you specify the table that the main table joins to, i.e. movies in the INNER JOIN clause. In addition, you put a join condition after the ON keyword i.e, actors.primary_key=movies.foreign_key.

SELECT actors.first_name, actors.last_name, movies.movie_title
FROM actors
INNER JOIN movies
ON actors.actor_id = movies.actor_playing_id;
