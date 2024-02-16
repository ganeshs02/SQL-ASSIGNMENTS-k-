-- Generate report showing no. of transaction per member per store.
USE retail;
SELECT member_id ,store_id ,COUNT(*) AS no_of_trans FROM tran_hdr
GROUP BY member_id ,store_id ;