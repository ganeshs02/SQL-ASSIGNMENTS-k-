-- Generate a report that shows total product sale
-- by month. show product_description,
-- month and sale

USE retail;
SELECT MONTH(td.tran_dt) AS tran_month,
p.description ,
COUNT(*) AS total_sale
FROM tran_dtl td 
JOIN product p ON p.product_id =td.product_id 
GROUP BY tran_month,p.description ;