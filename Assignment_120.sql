-- Generate report showing total number of transactions per member(member_id,member_first_name,num_tran)

USE retail;
SELECT m.member_id,m.first_name,COUNT(*) AS num_tran
FROM `member` m 
JOIN tran_hdr th USING(member_id)
GROUP BY m.member_id ;