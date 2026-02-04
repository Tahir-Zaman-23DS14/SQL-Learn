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