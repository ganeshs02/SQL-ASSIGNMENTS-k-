-- Generate report showing no. of transaction per member per month .
USE retail;
SELECT member_id ,MONTH(tran_dt) AS month ,COUNT(*) AS no_of_trans FROM tran_hdr
GROUP BY member_id ,month ;