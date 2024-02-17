-- Generate report showing total number of transactions for each member which have total amount of purchase >100 .
--  (member_id,member_name,num_tran_100)

USE retail;
SELECT m.first_name,td.tran_id ,SUM(amt) AS total_amount
FROM tran_dtl td 
JOIN tran_hdr th ON td.tran_id =th.tran_id 
JOIN `member` m ON th.member_id =m.member_id 
GROUP BY m.member_id ,tran_id
HAVING total_amount > 100;