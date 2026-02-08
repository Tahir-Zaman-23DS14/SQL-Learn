-- PRACTISE SQL QURIES 

-- CREATE DATA-BASE
-- CREATE Table: students
--  COULUMNS : > id, name, age, country, score, enrollment_date3

CREATE DATABASE Practise;

USE Practise

CREATE TABLE students(
Id INT NOT NULL,
First_Name VARCHAR(50) not null,
Age  DATE  ,
Country VARCHAR(50),
Score INT,
Enrollment_date DATE
CONSTRAINT pk_students PRIMARY KEY (Id)
);

DROP TABLE students;

SELECT * FROM students;

INSERT INTO students (id, first_name, age, country, score, enrollment_date)
VALUES
		(1, 'Tahir', '2003-09-06', 'Pakistan', 85, '2023-11-06'),
		(2, 'Zaman', '1978-09-06', 'Pakistan', 95, '2003-11-06'),
		(3, 'Muheed', '2026-09-06', 'Pakistan', 45, '2025-11-06');

