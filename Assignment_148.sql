-- Generate report showing rank for category according to total_amt of sale per store per month.
-- (store_id,month,category,total_sale,category_rank)




SELECT sub.*,
RANK() OVER(PARTITION BY sub.category,sub.month ORDER BY sub.total_amt DESC) AS category_rank
FROM
(SELECT th.store_id ,p.category ,MONTH(td.tran_dt)AS month,SUM(td.amt) AS total_amt
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id
JOIN tran_hdr th ON td.tran_id =th.tran_id
GROUP BY th.store_id ,month,p.category) sub;