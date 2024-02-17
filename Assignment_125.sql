-- Generate report showing total quantity purchased for each product each store.
-- (product_id,description,store_id,store_city,qty)
USE retail;
SELECT td.product_id,p.description,th.store_id,s.store_city,SUM(td.qty) AS total_qty
FROM tran_dtl td
JOIN tran_hdr th ON td.tran_id =th.tran_id
JOIN product p ON td.product_id =p.product_id 
JOIN store s ON s.store_id =th.store_id 
GROUP BY td.product_id ,th.store_id ;

