-- Generate report showing tran_ID,member_id,member_first_name,tran_dt

USE retail;
SELECT th.tran_id ,m.member_id ,m.first_name ,th.tran_dt 
FROM tran_hdr th 
JOIN `member` m USING(member_id);