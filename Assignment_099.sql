-- Generate report showing no. of transaction per store in descending order.
USE retail;
SELECT store_id,COUNT(*) AS no_of_trans FROM tran_hdr 
GROUP BY store_id 
ORDER BY no_of_trans DESC;