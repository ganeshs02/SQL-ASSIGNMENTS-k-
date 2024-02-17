-- Generate report showing total amount of purchase for each member (member_id,member_name,total_purchase_amt)
USE retail;
SELECT th.member_id,m.first_name,SUM(td.amt)  AS total_purchase_amt
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id =td.tran_id 
JOIN `member` m ON m.member_id =th.member_id 
GROUP BY th.member_id ;