-- Assignment 3 Create Tables
CREATE DATABASE School;

CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	homeroom_number SMALLINT NOT NULL,
	phone VARCHAR (10) NOT NULL UNIQUE,
	email VARCHAR (30) NOT NULL UNIQUE,
	graduation_year DATE
);

CREATE TABLE teachers (
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	homeroom_number SMALLINT NOT NULL,
	department VARCHAR (50) NOT NULL,
	email VARCHAR (30) NOT NULL UNIQUE,
	phone VARCHAR (10) NOT NULL UNIQUE
);
 
SELECT * FROM students;
SELECT * FROM teachers;
 
ALTER TABLE students 
ALTER COLUMN email DROP NOT NULL;

INSERT INTO students (first_name, last_name, homeroom_number, phone, email, graduation_year)
VALUES ('Mark', 'Watney', 5, '7775551234', null, '2035-01-01');

INSERT INTO teachers (first_name, last_name, homeroom_number, department, phone, email)
VALUES ('Jonas', 'Salk', 5, 'Biology', '7775554321', 'jsalk@school.org');

