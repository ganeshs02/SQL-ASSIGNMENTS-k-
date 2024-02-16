-- Generate report showing total number of transaction per month per store in ascending order.
USE retail;
SELECT store_id,MONTH(tran_dt) AS month,COUNT(*) AS total_no_of_trans  FROM tran_hdr 
GROUP BY MONTH(tran_dt),store_id 
ORDER BY total_no_of_trans;