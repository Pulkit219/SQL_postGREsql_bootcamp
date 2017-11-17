--CHECK CONSTRAINT

CREATE TABLE  new_users(
id serial PRIMARY KEY,
    first_name VARCHAR(50),
    birth_date DATE CHECK(birth_date > '1900-01-01'),
    join_date DATE CHECK(join_date > birth_date),
    salary integer CHECK(salary >0)
);

SELECT * FROM new_users;
INSERT INTO new_users(first_name,birth_date,join_date,salary) VALUES('Joe','1991-02-02','2011-05-02',10);

--DEFINE A NAME TO CONSTARINT
CREATE TABLE  new_users_copy(
id serial PRIMARY KEY,
    first_name VARCHAR(50),
    birth_date DATE CHECK(birth_date > '1900-01-01'),
    join_date DATE CHECK(join_date > birth_date),
    salary integer CONSTRAINT positive_sales CHECK(salary >0)
);

SELECT * FROM new_users_copy;
INSERT INTO new_users_copy(first_name,birth_date,join_date,salary) VALUES('Joe','1991-02-02','2011-05-02',0);

--NOT NULL CONSTRAINT
CREATE TABLE learn_null(
first_name VARCHAR(100),
    sales integer NOT NULL
);


INSERT INTO learn_null(first_name) VALUES('JOhn');


--UNIQUE CONSRAINT
CREATE TABLE people(
id serial PRIMARY KEY,
    first_name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);
SELECT * FROM people;
INSERT INTO people (id,first_name,email) VALUES(1,'Joe','joe@gmail.com');
INSERT INTO people (id,first_name,email) VALUES(2,'Rock','joe@gmail.com');