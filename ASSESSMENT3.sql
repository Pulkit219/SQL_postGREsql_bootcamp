--SQL ASSESSMENT 3


CREATE TABLE students(
student_id serial PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    homeroom_number integer NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    phone VARCHAR(50) NOT NULL UNIQUE,
    graduation_year integer
);


CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    homeroom_number integer NOT NULL,
    department VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    phone VARCHAR(50) NOT NULL UNIQUE
);

	
ALTER TABLE students ALTER COLUMN phone TYPE VARCHAR(50);
ALTER TABLE teachers ALTER COLUMN phone TYPE VARCHAR(50);

INSERT INTO students(first_name,last_name, 
homeroom_number,phone,graduation_year,email)
VALUES ('Mark','Watney',5,'7755551234',2035,'student@stu.com');

INSERT INTO teachers(first_name,last_name, 
homeroom_number,department,email,phone)
VALUES ('Jonas','Salk',5,'Biology','jsalk@school.org','7755554321');