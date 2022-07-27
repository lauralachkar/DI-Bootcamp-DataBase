CREATE TABLE movies(
movie_id SERIAL,
movie_title VARCHAR (50) NOT NULL,
movie_story TEXT,
actor_playing_id INTEGER,
PRIMARY KEY (movie_id),
FOREIGN KEY (actor_playing_id) REFERENCES actors (actor_id)
);

CREATE TABLE producers(
producer_id SERIAL PRIMARY KEY,
producer_name text NOT NULL,
movie_id int,
FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

INSERT INTO movies (movie_title, movie_story, actor_playing_id) VALUES
    ( 1,'Good Will Hunting', 
    'Written by Affleck and Damon, the film follows 20-year-old South Boston janitor Will Hunting');
INSERT INTO producers (producer_id,producer_name,movie_id) VALUES
     (1,"Steven Spilberg",1);

SELECT * from movies;  
SELECT * from producers;  

SELECT movies.movie_id, movies.movie_title, movies.movie_story,movies.actor_playing_id
FROM movies
INNER JOIN producers
ON movies.movie_id = producers.movie_id;
