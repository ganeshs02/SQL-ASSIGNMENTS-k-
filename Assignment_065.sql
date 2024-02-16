-- same query as row 64 for quarter 

USE retail;
SELECT *,QUARTER(tran_dt) AS tran_quaters  FROM tran_dtl;