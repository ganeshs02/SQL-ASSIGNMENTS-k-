-- Generate report showing total amount of purchase for each member per category per month.
-- (member_id,category,month,total_amt)
SELECT m.member_id,p.category,MONTH(td.tran_dt) AS month ,SUM(td.amt) AS total_amt
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id =td.tran_id 
JOIN `member` m ON m.member_id =th.member_id 
JOIN product p ON p.product_id = td.product_id 
GROUP BY m.member_id ,p.category ,month;