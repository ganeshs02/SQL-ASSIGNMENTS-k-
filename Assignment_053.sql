-- Generate report showing number of transaction per member per store per quarter.
-- (member_id,store_id,qtr,num_tran)
USE retail;
SELECT member_id,store_id,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN 'Q1'
	WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN 'Q2'
	WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN 'Q3'
	WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN 'Q4'
END AS qtr, COUNT(*) AS num_tran
FROM tran_hdr
GROUP BY member_id ,store_id ,qtr;
