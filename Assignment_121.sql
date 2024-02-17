-- Generate report showing total number of transactions per store.
-- (store_id,store_city,num_tran in descending order)

USE retail;
SELECT s.store_id,s.store_city,COUNT(*) AS num_tran
FROM store s 
JOIN tran_hdr th USING(store_id)
GROUP BY s.store_id 
ORDER BY num_tran DESC;