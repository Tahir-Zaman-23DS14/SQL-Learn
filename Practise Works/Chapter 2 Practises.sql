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
count(id) AS ID_for_Each_Country,
country,
sum(score) AS Each_country_total_Score
from customers
GROUP BY country

SELECT * FROM customers