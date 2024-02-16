-- Generate report showing no. of members registered per store.
USE retail;
SELECT store_id ,COUNT(*) AS total_no_members FROM tran_hdr
GROUP BY store_id ;