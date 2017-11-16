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