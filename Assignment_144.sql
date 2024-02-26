-- Generate report showing product rank for member_id 1010 (member_id,product_id,total_sale,rank_product)

SELECT  *,
RANK() OVER(ORDER BY sub.total_sale DESC) AS rank_prduct
FROM
(SELECT th.member_id ,td.product_id,COUNT(*) AS total_sale FROM tran_hdr th 
JOIN tran_dtl td ON td.tran_id =th.tran_id 
WHERE member_id = 1010
GROUP BY product_id)sub;