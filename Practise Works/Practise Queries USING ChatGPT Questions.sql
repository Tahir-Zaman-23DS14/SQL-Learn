-- PRACTISE SQL QURIES 

-- CREATE DATA-BASE
-- CREATE Table: students
--  COULUMNS : > id, name, age, country, score, enrollment_date3

CREATE DATABASE Practise;

USE Practise;

CREATE TABLE Students(
	Id INT NOT NULL,
	First_Name VARCHAR(50) not null,
	Country VARCHAR(50),
	
CONSTRAINT pk_Students PRIMARY KEY (Id)
);

ALTER TABLE Students
ADD email VARCHAR(50);


ALTER TABLE Students
DROP COLUMN country

ALTER TABLE Students
ADD Age INT

ALTER TABLE Students
ADD Country VARCHAR(50);

SELECT * FROM Students;

DROP TABLE students;




