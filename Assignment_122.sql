-- Generate report showing total quantity purchased for each product
-- (product_id,product_description,total_qty)
USE retail;
SELECT td.product_id,p.description,COUNT(*) AS total_qty
FROM tran_dtl td 
JOIN product p USING(product_id)
GROUP BY p.product_id ;