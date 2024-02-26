-- Generate report showing top 3 products purchased per store according to quantity sold.
-- (store_id,product_id,description,total_qty,product_rank)

USE retail;


SELECT sub2.*
FROM
(SELECT sub.*,
RANK () OVER(PARTITION BY sub.store_id ORDER BY sub.total_qty DESC) as product_rank
FROM
(SELECT th.store_id,p.description ,td.product_id,COUNT(*) AS total_qty
FROM tran_dtl td JOIN tran_hdr th ON td.tran_id =th.tran_id 
JOIN product p ON td.product_id  = p.product_id
GROUP BY th.store_id ,td.product_id)sub) sub2
WHERE sub2.product_rank < 4;