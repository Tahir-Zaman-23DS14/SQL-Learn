-- PREACTISE SQL QURIES 
-- CHAPTER 2

SELECT *
 FROM dbo.customers

 SELECT *
  FROM dbo.orders


SELECT 
id,
first_name
FROM customers


SELECT
order_id,
customer_id
FROM orders

SELECT
first_name,
country,
score
FROM customers


SELECT * 
FROM customers
WHERE score != 0

SELECT *
FROM customers
WHERE country = 'Germany'

SELECT *
 first_name,
 country
 FROM customers
WHERE country = 'Germany'


SELECT * FROM customers
ORDER BY score ASC

SELECT * FROM customers
ORDER BY score DESC

SELECT * FROM customers
ORDER BY score DESC ,
		country ASC



SELECT * FROM customers
ORDER BY country ASC,
		score DESC


SELECT 
country,
sum(score)
FROM customers
GROUP BY country


SELECT
country,
sum(score)
FROM customers
GROUP BY country

SELECT * FROM customers
ORDER BY score DESC


SELECT 
max(ID) AS TOTAL_ID , 
sum(score) AS TOTAL_SCORE
FROM customers


SELECT
country,
sum(score) AS Each_country_total_Score,
count(id) AS ID_for_Each_Country

from customers
GROUP BY country

HAVING sum(score)>=850

SELECT * FROM customers

SELECT
country,
first_name,
AVG(score) As average_score
FROM customers
GROUP BY country,first_name
HAVING AVG(score)>=450

SELECT
country,
AVG(score)
FROM customers
WHERE score ! = 0
GROUP BY country
HAVING AVG(score) >450

-- Q1 Write a query to find each Country and the total number of students in that Country, but only include Countries having more than 3 students.
-- Sort the result by total students in descending order.
SELECT 
country,
count(id) AS total_student
FROM customers
GROUP BY country 
HAVING count(id) >3 
ORDER BY total_student DESC


-- Q2 Write a query to display Country-wise average score, but only for Countries where the average score is greater than 70.
--Order the result by average score from highest to lowest.



SELECT 
	country,
	AVG(score) AS average_score
FROM customers
GROUP BY country
HAVING AVG(score) > 70
ORDER BY AVG(score) DESC


-- Q3 Write a query to count how many students scored above 800 in each Country.
--  Show only those Countries where this count is at least 2.

SELECT 
country,
COUNT(id) AS Student_Score
FROM customers
WHERE score > 80
GROUP BY country
HAVING COUNT(id) >= 2

-- Q4 Write a query to find the maximum score in each Country, but exclude Countries where the maximum score is below 60.
--  Sort the output by maximum score ascending.

SELECT 
	country,
	MAX(score) AS Maximun_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING MAX(score) ! < 60
ORDER BY  MAX(SCORE) ASC
SELECT * FROM customers

-- Q5 Write a query to list Countries and the minimum score achieved in each, but only consider students whose score is greater than 40.
-- Display only those Countries where the minimum score is greater than 50.

SELECT
country,
MIN(score)
FROM customers
WHERE score > 40
GROUP BY country
HAVING MIN(score) > 50



-- Write a query to find the total number of students per Country, but ignore students whose score is less than 30.
--  Order the results alphabetically by Country name.