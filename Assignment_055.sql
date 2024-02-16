-- Generate report showing total sale for each product each qtr (product_id,description,qtr,total_sale)
USE retail;
SELECT td.product_id,p.description ,CASE 
	WHEN MONTH(td.tran_dt) BETWEEN 1 AND 3 THEN 'Q1'
	WHEN MONTH(td.tran_dt) BETWEEN 4 AND 6 THEN 'Q2'
	WHEN MONTH(td.tran_dt) BETWEEN 7 AND 9 THEN 'Q3'
	WHEN MONTH(td.tran_dt) BETWEEN 10 AND 12 THEN 'Q4'
END AS qtr,COUNT(*) AS total_sale
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id 
GROUP BY td.product_id ,qtr;