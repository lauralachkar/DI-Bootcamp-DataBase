create TABLE customer(
customer_id SERIAL,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
PRIMARY key (customer_id)
);

CREATE TABLE profil(
pk_customer_id INTEGER NOT NULL,
isLoggedIn DEFAULT false,
PRIMARY KEY (pk_customer_id),
constraint fk_customer_id foreign key (pk_customer_id) references customer_id (customer_id)
);

INSERT into customer(first_name, last_name) VALUES ('John','Doe');
INSERT into customer(first_name, last_name) VALUES ('Jerome','Lalu');
INSERT into customer(first_name, last_name) VALUES ('Lea','Rive');
SELECT * from customer;

-- insert into customer_profile 
-- values
-- (
-- default,
-- (select customer_id from customer where first_name = 'John'),
-- true
-- ),
-- (
-- default,
-- (select customer_id from customer where first_name = 'Jerome'),
-- default
-- );

-- select * from customer_profile;

-- select first_name, isloggedin 
-- from customer_profile
-- inner join customer
-- on customer_profile.customer_id = customer.customer_id;


-- select first_name, isloggedin 
-- from customer_profile
-- right join customer
-- on customer_profile.customer_id = customer.customer_id;



