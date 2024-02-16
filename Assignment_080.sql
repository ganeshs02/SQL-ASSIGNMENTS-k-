-- Generate report showing monthly sale for each month.
USE retail;
SELECT * FROM tran_dtl;

SELECT MONTH(tran_dt),SUM(qty) AS total_sale  from tran_dtl
GROUP BY MONTH(tran_dt);