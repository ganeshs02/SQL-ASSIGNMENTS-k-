-- Generate report showing total_sale for each product with product classification according to total_sale.
-- (product_id,description,total_sale,classification)

USE retail;
SELECT td.product_id ,p.description,COUNT(*) AS total_sale,
CASE 
	WHEN COUNT(*)<= 250 THEN 'low'
	WHEN COUNT(*) <=270 THEN 'mid'
	WHEN COUNT(*) > 270 THEN 'high'
END AS classification
FROM tran_dtl td 
JOIN product p ON td.product_id =p.product_id 
GROUP BY td.product_id ,p.description ;
