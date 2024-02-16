-- Generate a report that shows total sale
-- by member, product and month. 
-- (show member name, product description,
-- month, total_sale on the report.)
USE retail;
SELECT m.first_name ,p.description ,
MONTH(th.tran_dt) AS tran_month,
COUNT(*) AS total_sale
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id =td.tran_id 
JOIN `member` m ON m.member_id =th.member_id 
JOIN product p ON p.product_id =td.product_id 
GROUP BY m.member_id ,p.description ,tran_month;