-- Generate report showing number of transactions per store per quarter. 
-- (store_id,store_city,qtr1,qtr2,qtr,qtr4,total_tran)
USE retail;

SELECT sub.store_id,
MAX(CASE WHEN sub.qtr='Q1' THEN sub.total_tran END) AS qtr1,
MAX(CASE WHEN sub.qtr='Q2' THEN sub.total_tran END) AS qtr2,
MAX(CASE WHEN sub.qtr='Q3' THEN sub.total_tran END) AS qtr3,
MAX(CASE WHEN sub.qtr='Q4' THEN sub.total_tran END) AS qtr4,
sub2.total_tran
FROM
(SELECT store_id,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN 'Q1'
	WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN 'Q2'
	WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN 'Q3'
	WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN 'Q4'
END AS qtr
,COUNT(tran_id) AS total_tran
FROM tran_hdr 
GROUP BY store_id ,qtr)sub
LEFT JOIN 
(SELECT store_id,COUNT(tran_id) AS total_tran
FROM tran_hdr
GROUP BY store_id)sub2 ON sub.store_id= sub2.store_id
GROUP BY store_id;