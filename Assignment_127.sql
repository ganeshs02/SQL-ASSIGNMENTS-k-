-- Generate report showing total amount of purchase for each category per  month.
-- (category_name,month,total_amt)
USE retail;
SELECT * FROM tran_dtl td ;
SELECT * FROM product p ;

SELECT p.category,MONTH(td.tran_dt) AS month,COUNT(td.amt)
FROM tran_dtl td 
JOIN product p ON p.product_id =td.product_id 
GROUP BY p.category,month ;