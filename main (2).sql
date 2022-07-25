CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);

INSERT INTO actors VALUES ('2535533','Monica','Belluchi','10-05-10',3);
INSERT INTO actors VALUES ('3041222','Jennifor','Aniston','20-07-11',4);
INSERT INTO actors VALUES ('2234556','Jason','Tatoum','20-07-11',5);
INSERT INTO actors VALUES ('7888888','Jessica','Alba','20-07-11',6);
INSERT INTO actors VALUES ('9999999','Brad','Pit','20-07-11',7);

select count(first_name) from actors;

INSERT INTO actors VALUES ('2535533',NULL,'Belluchi','10-05-10',3);