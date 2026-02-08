-- PRACTISE SQL QURIES 

-- CREATE DATA-BASE
-- CREATE Table: students
--  COULUMNS : > id, name, age, country, score, enrollment_date3

CREATE DATABASE Practise;

USE Practise

CREATE TABLE students (
Id INT NOT NULL,
First_Name VARCHAR(50) not null,
Age  DATE  ,
Country VARCHAR(50),
Score INT,
Enrollment_date DATE
CONSTRAINT pk_students PRIMARY KEY (Id)
)

SELECT * FROM students