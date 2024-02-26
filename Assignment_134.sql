-- Generate report showing number of transactions per product per store. 
-- (product_id,description,st1_tran,st2_tran,st3_tran)
USE retail;
SELECT sub.product_id,sub.description,
MAX(CASE WHEN sub.store_id=1 THEN trans END) AS st1_tran,
MAX(CASE WHEN sub.store_id=2 THEN trans END) AS st2_tran,
MAX(CASE WHEN sub.store_id=3 THEN trans END) AS st3_tran
FROM
(SELECT td.product_id ,p.description ,th.store_id ,COUNT(td.tran_id) AS trans
FROM tran_dtl td 
JOIN tran_hdr th ON th.tran_id =td.tran_id
JOIN product p ON p.product_id =td.product_id
GROUP BY td.product_id ,th.store_id)sub
GROUP BY sub.product_id;