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

SELECT 
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

SELECT DISTINCT
country
FROM customers



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

SELECT TOP(3) *
FROM customers;




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


-- Q6 Write a query to find the total number of students per Country, but ignore students whose score is less than 400.
--Order the results alphabetically by Country name.


SELECT
	country,
	COUNT(id) AS TOTAL_STUDENT
     FROM customers
	 WHERE score >= 300
	 GROUP BY country
	 ORDER BY country ASC;
	


-- Q7  Write a query to calculate the average score per Country, considering only students from specific Countries (e.g., Pakistan, India),
--     and show only those Countries where the average score is below 450.



	SELECT 
	country,
	AVG(score) AS Average_Score 
	FROM customers
	WHERE country = 'Germany'
	GROUP BY country
	HAVING AVG(score) <= 450




	
-- Q8 Write a query to find Countries where more than 2 students have a score above 60.
--    Display the Country name and the count of such students.
	
	SELECT * FROM customers

SELECT 
	country,
	COUNT(id) AS  Student_COUNT
	FROM customers
	WHERE score > 60
	GROUP BY country
	HAVING COUNT(id) = 2



	-- Q9 Write a query to group students by Country  and find the highest score,
	--	but only for Countries where at least 2 students exist.
	--	Sort the results by highest score descending.


	SELECT 
	country,
	COUNT(score) AS Highest_score
	FROM customers
	GROUP BY country
	HAVING COUNT(id) >=2
	ORDER BY Highest_score DESC

-- Q10 Write a query to display Country and the average score of students in each country.
--  Show only those countries where the average score is greater than 430.
	
	SELECT 
	country,
	AVG(score) AS Average_Score
	FROM customers
	GROUP BY country
	HAVING AVG(score) > 430
	SELECT*FROM customers

	-- Q11  Write a query to find the total number of students in each country.
	-- Display only the countries that have more than 2 students.

	SELECT 
	country,
	COUNT(id) AS Total_Student
	FROM customers
	GROUP BY country
	HAVING COUNT(id) >=2 


-- Q12	Write a query to find the minimum score obtained by students in each country.
--   Sort the result by minimum score in ascending order.





SELECT 
country,
min(score)	AS minimum_Score
FROM customers
GROUP BY country
ORDER BY min(score) ASC

-- Q13
-- Write a query to display Country and the total score of all students in that country.
-- Exclude students whose score is less than 770.

SELECT 
    country,
    SUM(score) AS total_score
FROM customers
WHERE score >= 770
GROUP BY country;

--Q14
-- Write a query to find countries where exactly 2 students have scored above 80.
-- Display the country name and the count of such students. 

SELECT
country,
Count(id) AS Total_Student
FROM customers
Where score > 80
GROUP BY country
