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

CREATE TABLE products(
ID INT NOT NULL, 
Brand VARCHAR(50),
Device VARCHAR(50),
Model_Device VARCHAR(50),
Country_of_Origin VARCHAR(50),
Date_of_Release VARCHAR(50),
Price_USD INT,
CONSTRAINT pk_products PRIMARY KEY (ID));




BULK INSERT products
FROM 'D:\Git-Hub\SQL\Practise Works\data Set for Practise Queries\Technological-Products-Sample-Data.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


/* ============================================= HERE WE GO FOR PRACTISE ================================================== */


--Q1 Display all products manufactured in United States.

SELECT 
	Model_Device
FROM products
WHERE Country_of_Origin = 'United States'

--Q2 Show brand, device, and price_usd for products priced above 1000 USD.

SELECT 
Brand,
Device,
Price_USD
FROM products
WHERE Price_USD > 1000




SELECT * FROM products