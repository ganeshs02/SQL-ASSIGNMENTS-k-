-- Generate report showing total number of transactions per member per store.
-- (member_id,store_id,store_name,num_tran)
USE retail;
SELECT th.member_id,th.store_id ,s.store ,COUNT(*) AS num_tran
FROM tran_hdr th 
JOIN store s  USING(store_id)
GROUP BY th.member_id ,th.store_id ;