-- Generate report showing total quantity per category per store.(category,st1_qty,st2_qty,st3_qty)

USE retail;
SELECT sub.category,
MAX(CASE WHEN sub.store_id=1 THEN sub.total_qty END) AS st1_qty,
MAX(CASE WHEN sub.store_id=2 THEN sub.total_qty END) AS st2_qty,
MAX(CASE WHEN sub.store_id=3 THEN sub.total_qty END) AS st3_qty
FROM 
(SELECT p.category ,th.store_id ,SUM(td.qty) AS total_qty
FROM tran_dtl td 
JOIN tran_hdr th ON th.tran_id =td.tran_id 
JOIN product p ON td.product_id AND p.product_id 
GROUP BY p.category ,th.store_id)sub
GROUP BY sub.category;