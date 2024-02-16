-- Generate report showing no. of transaction per member.
USE retail;
SELECT MONTH(tran_dt) AS month , COUNT(*) AS total_no_of_trans FROM tran_hdr 
GROUP BY month;