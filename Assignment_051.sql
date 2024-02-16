-- Generate report showing number of transaction per store per quarter (store_id,store_city,qtr,num_tran)

USE retail;
SELECT store_id,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN '1'
	WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN '2'
	WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN '3'
	WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN '4'
END AS qtr,
COUNT(*) AS num_tran
FROM tran_hdr
GROUP BY store_id,qtr;