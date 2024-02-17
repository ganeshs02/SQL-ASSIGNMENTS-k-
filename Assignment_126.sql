-- Generate report showing total amount of purchase for each product each store.(category_name,total_amt)
USE retail;


SELECT td.product_id ,th.store_id ,p.category ,SUM(td.amt) AS toal_amt
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id =td.tran_id
JOIN product p ON td.product_id =p.product_id 
GROUP BY td.product_id ,th.tran_id ;