-- Generate report showing total number of transactions per member per month.
USE retail;
SHOW TABLES;
SELECT member_id ,MONTH(tran_dt) AS month,COUNT(tran_id) AS total_no_tran FROM tran_hdr
GROUP BY member_id ,MONTH(tran_dt);