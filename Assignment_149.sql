-- Generate report showing max. and min purchased product_ids for each member.
-- (member_id,max_purchase_prod_id,min_purchase_prod_id)



SELECT sub2.member_id,
MAX(CASE WHEN sub2.product_id = sub2.min THEN sub2.product_id END) AS min_purchase_prod_id,
MAX(CASE WHEN sub2.product_id = sub2.max THEN sub2.product_id END) AS max_purchase_prod_id
FROM
(SELECT sub.*,
MIN(sub.total_cnt) OVER(PARTITION BY sub.member_id) AS min,
MAX(sub.total_cnt) OVER(PARTITION BY sub.member_id) AS max
FROM
(SELECT th.member_id ,td.product_id ,COUNT(*) AS total_cnt
 FROM tran_hdr th
 JOIN tran_dtl td ON th.tran_id =td.tran_id 
 GROUP BY th.member_id ,td.product_id) sub)sub2
 GROUP BY sub2.member_id;