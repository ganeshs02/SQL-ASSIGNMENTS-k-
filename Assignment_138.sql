-- Generate report showing total_sale for each category per store.
-- (category,st1_sale,st2_salest3_sale,total_sale)

USE retail;
SELECT sub.category,
MAX(CASE WHEN sub.store_id=1 THEN sub.total_sale END) AS st1_sale,
MAX(CASE WHEN sub.store_id=2 THEN sub.total_sale END) AS st2_sale,
MAX(CASE WHEN sub.store_id=3 THEN sub.total_sale END) AS st3_sale,
sub2.total_sale
FROM 
(SELECT p.category ,th.store_id ,SUM(td.qty) AS total_sale
FROM product p 
JOIN tran_dtl td ON p.product_id =td.product_id
JOIN tran_hdr th ON th.tran_id =td.tran_id
GROUP BY p.category,th.store_id)sub
JOIN (SELECT p.category ,SUM(td.qty) AS total_sale
FROM product p 
JOIN tran_dtl td ON p.product_id =td.product_id
JOIN tran_hdr th ON th.tran_id =td.tran_id
GROUP BY p.category)sub2 ON sub.category=sub2.category
GROUP BY sub.category;