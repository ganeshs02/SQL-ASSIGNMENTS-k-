-- Generate report showing total number of transactions per member per store.
USE retail;
SELECT member_id ,store_id ,COUNT(tran_id) AS total_no_of_trans FROM tran_hdr
GROUP BY member_id ,store_id ;