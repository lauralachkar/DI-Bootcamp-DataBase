CREATE TABLE items(
 small_desk int,
 large_desk int ,
 fan int
);

CREATE TABLE customer(
 FirstName char(4),
 lastname char(4)
);


INSERT INTO items VALUES (100,300,80);
INSERT INTO customer VALUES('Greg','Jones');
INSERT INTO customer VALUES('Sandra','Jones');
INSERT INTO customer VALUES('Scott','Scott');
INSERT INTO customer VALUES('Trevor','Green');
INSERT INTO customer VALUES('Melanie','Johnson');
SELECT * FROM items;
SELECT * FROM customer;
SELECT small_desk FROM items;
SELECT large_desk FROM items;

SELECT small_desk FROM items;
SELECT fan FROM items;


SELECT * FROM customer WHERE lastname = 'Smith';
SELECT * FROM customer WHERE lastname = 'Jones';
SELECT lastname FROM customer WHERE lastname != 'Scott' ;