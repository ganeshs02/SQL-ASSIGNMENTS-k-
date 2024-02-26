-- Generate report showing total quantity for each product per store.
-- (product_id,description,st1_qty,st2_qty,st3_qty,total_qty)

USE retail;
SELECT sub.product_id,sub.description,
MAX(CASE WHEN sub.store_id=1 THEN qty END) AS st1_qty,
MAX(CASE WHEN sub.store_id=2 THEN qty END) AS st2_qty,
MAX(CASE WHEN sub.store_id=3 THEN qty END) AS st3_qty,
sub2.total_qty
FROM
(SELECT td.product_id ,p.description ,th.store_id ,COUNT(td.qty) AS qty
FROM tran_dtl td 
JOIN tran_hdr th ON th.tran_id =td.tran_id
JOIN product p ON p.product_id =td.product_id
GROUP BY td.product_id ,th.store_id)sub
LEFT JOIN 
(SELECT td.product_id,COUNT(td.qty) AS total_qty
FROM tran_dtl td 
JOIN tran_hdr th ON th.tran_id =td.tran_id
GROUP BY td.product_id )sub2 ON sub.product_id=sub2.product_id
GROUP BY sub.product_id;