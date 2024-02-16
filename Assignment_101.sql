-- Generate report showing total number of transaction per month.
USE retail;
SELECT MONTH(tran_dt) AS month,COUNT(*) AS total_trans FROM tran_hdr 
GROUP BY month;