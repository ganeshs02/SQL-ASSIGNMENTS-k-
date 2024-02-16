-- Generate report that shows number of
-- transactions per member  per store. 
-- (Show member name and store city).

USE retail;
SELECT th.member_id,m.first_name ,
th.store_id,s.store_city,
COUNT(*) AS total_tran
FROM tran_hdr th 
JOIN `member` m ON m.member_id =th.member_id 
JOIN store s ON th.store_id =s.store_id
GROUP BY th.member_id ,th.store_id ;

DESCRIBE store;