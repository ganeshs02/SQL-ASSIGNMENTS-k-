-- Generate report showing number of transaction per quarter (qtr_name,num_tran)

USE retail;
SELECT 
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN 'Q1'
	WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN 'Q2'
	WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN 'Q3'
	WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN 'Q4'
END AS qtr_name,
COUNT(*) AS num_tran
FROM tran_dtl 
GROUP BY qtr_name;
