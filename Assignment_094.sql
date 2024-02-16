-- Generate report showing no. of transaction per store.
USE retail;
SELECT store_id,COUNT(*) AS no_of_transactions FROM tran_hdr
GROUP BY store_id ;