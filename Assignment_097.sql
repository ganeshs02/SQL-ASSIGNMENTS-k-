-- Generate report showing no.of transaction per store per month.
USE retail;
SELECT store_id,MONTH(tran_dt) AS month FROM tran_hdr th 
GROUP BY store_id ,month;