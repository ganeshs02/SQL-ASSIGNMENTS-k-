-- Generate report showing total amount of sales for transaction date 2019-08-12.
USE retail;
SELECT SUM(amt) AS amount FROM tran_dtl td 
WHERE tran_dt='2019-08-12';