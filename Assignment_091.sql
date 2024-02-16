-- Generate report showing no. of members registered per store per month.
USE retail;
SELECT store_id ,MONTH(tran_dt) AS month,COUNT(*) AS total_no_members FROM tran_hdr 
GROUP BY store_id ,month;