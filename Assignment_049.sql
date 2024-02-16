-- Generate report showing tran_dtl table with one additional 
-- column quarter showing quarter of tran_dt.

USE retail;
SELECT * ,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN 'Q1'
	WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN 'Q2'
	WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN 'Q3'
	WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN 'Q4'
END AS qtr
FROM tran_dtl;
