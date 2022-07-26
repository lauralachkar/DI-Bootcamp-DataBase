
create table items(
id serial primary key,
name varchar(100),
price float
);

create table customer(
id serial primary key,
first_name varchar(50),
last_name varchar(50)
);

INSERT INTO items VALUES (1,'Small desk',100);
INSERT INTO items VALUES (2,'Large desk',300);
INSERT INTO items VALUES (3,'fan',80);
INSERT INTO customer VALUES (1,'Rayan','Cohen');
INSERT INTO customer VALUES (2,'Camille','Beniti');
INSERT INTO customer VALUES (3,'Delphine','Merciano');
SELECT * from items;
SELECT * from customer;


SELECT price FROM items ORDER BY price ASC;
SELECT * FROM items WHERE price >= 80 ORDER BY price DESC;
SELECT * FROM customer WHERE first_name LIMIT 3; 
SELECT first_name FROM customer ORDER BY first_name ASC;
SELECT last_name FROM customer ORDER BY last_name DESC;
