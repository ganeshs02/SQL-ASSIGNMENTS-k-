-- Generate report showing no. of transaction per member per store per month.
USE retail;
SELECT member_id,store_id,MONTH(tran_dt) AS month FROM tran_hdr 
GROUP BY member_id ,store_id ,month;