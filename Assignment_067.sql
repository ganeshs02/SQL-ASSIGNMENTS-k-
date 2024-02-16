-- Generate report showing total number of transactions at store 2.
USE retail;
SELECT COUNT(*) AS count_of_tran FROM tran_hdr th 
WHERE store_id =2;