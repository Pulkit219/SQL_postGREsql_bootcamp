--SQL ASSESSMENT 3


CREATE TABLE students(
student_id serial PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    homeroom_number integer NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    phone integer NOT NULL UNIQUE,
    graduation_year integer
);


CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    homeroom_number integer NOT NULL,
    department VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    phone integer NOT NULL UNIQUE
);