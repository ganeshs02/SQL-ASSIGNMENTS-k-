-- Generate report showing number of transaction per store per quarter (store_id,store_city,qtr,num_tran)
USE retail;
-- 5 basic SELECT Statement Quries
SELECT * FROM product;
SELECT description ,category FROM product;
SELECT DISTINCT category FROM product;
SELECT DISTINCT description,category FROM product;
SELECT description AS name , category FROM product;
SELECT  product_id,description,category,
(price * max_qty) AS total_price FROM product;
-- The ORDER BY and LIMIT Clauses in SQL
SELECT * FROM product 
ORDER by description DESC;

SELECT * FROM product 
ORDER by description,category 
LIMIT 10;
-- How to filter with the WHERE claue in sql
-- string
SELECT * FROM product ;
SELECT * FROM product 
WHERE category = 'Baked goods';

SELECT * FROM product 
WHERE category LIKE '%goods';

SELECT * FROM product 
WHERE category LIKE 'fresh%';

SELECT * FROM product 
WHERE category LIKE '%pro%';
-- numbers
SELECT * FROM product 
WHERE price > 2.5;

-- date
SELECT * FROM tran_dtl
WHERE (tran_dt  > '2000-01-01' AND product_id <50) OR qty >3;

-- not 
SELECT * FROM product 
WHERE NOT category LIKE 'Bake%' ;

-- between 
SELECT * FROM product 
WHERE price BETWEEN 0 AND 1;

SELECT * FROM  product
WHERE category IN ('Baked goods','Beverages');

-- NULL value 
SELECT * FROM product
WHERE description IS NOT NULL;

SELECT * FROM product
WHERE description IS NULL;

-- Basic aggregate Function in sql(COUNT,SUM,AVG,MAX,and MIN)
SELECT COUNT(*) FROM product;
SELECT COUNT(*) FROM product 
WHERE product_id >10;

SELECT SUM(price) FROM product;
SELECT AVG(max_qty) FROM product;
SELECT MAX(max_qty) FROM product ;
SELECT MIN(max_qty) FROM product;

SELECT MAX(max_qty)-AVG(max_qty) FROM product ;

-- Advanced Aggregates Functions
SELECT category, max_qty ,COUNT(*)  FROM product
WHERE price > 0.1
GROUP BY 1,2
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

-- String Functions in sql
SELECT CHAR_LENGTH(description) AS desc_lenght
FROM product;

SELECT description  ,LEFT(description,5) 
FROM product;

SELECT description  ,RIGHT (description,5) 
FROM product;

SELECT category,POSITION (' ' IN category)
FROM product;

SELECT category,
LEFT(category,POSITION (' ' IN category)) AS first_half
FROM product;

SELECT category,
RIGHT(category,CHAR_LENGTH(category)-POSITION(' ' IN category)) AS second_half
FROM product;

SELECT * FROM product;
SELECT CONCAT(description,",",category)
AS full_description
FROM product;

SELECT LOWER (description) FROM product;

SELECT UPPER(description) FROM product;

SELECT REPLACE (category,' ','-') FROM product;

-- How to ROUND in sql
select * ,ROUND(price) AS round_price,
CEILING(price) AS celing_price,
FLOOR(price) AS floor_price;

-- TO_CHAR FUNCTION in sql
-- DATE_TRUNC FUNCTION in sql

-- combine sql Queries With UNION,INTERSET,EXCEPT

SELECT member_id FROM member 
UNION
SELECT product_id FROM product;

SELECT member_id FROM member 
UNION ALL
SELECT product_id FROM product;

SELECT member_id FROM member 
INTERSECT
SELECT product_id FROM product;

SELECT member_id FROM member 
EXCEPT
SELECT product_id FROM product;

-- How to do Subqueries in sql
-- select statement
SELECT description ,price,(SELECT AVG(price) 
FROM product) FROM product ;

-- from statement
SELECT customer_id,AVG(num_order) FROM 
 (SELECT customer_id,shipcountry,Count(*) As 
num_orders FROM orders ) sub
GROUP BY 1;

-- where clause
SELECT * FROM tran_hdr th 
WHERE member_id IN 
(SELECT member_id FROM member 
WHERE first_name LIKE '%a%');

-- new






-- https://www.youtube.com/watch?v=4Uv0o8IBqw0&list=PLGPGLQRuosDJNfq8vdtLSZ5YbNbkYZkSU&index=5