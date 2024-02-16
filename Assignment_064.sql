/*
Generate a report that shows all columns from tran_dtl table with one additional column month_ts 
- derived as month(tran_dt).
Same report should show 12 additional columns as one column per month and amt in the tran_dtl table show 
appear in the month column it belongs and remaining 11 columns should have zero as value for that row
*/
USE retail;
SELECT *,MONTH(tran_dt) AS month_ts,
    CASE WHEN MONTH(tran_dt) = 1 THEN amt ELSE 0 END AS January,
    CASE WHEN MONTH(tran_dt) = 2 THEN amt ELSE 0 END AS February,
    CASE WHEN MONTH(tran_dt) = 3 THEN amt ELSE 0 END AS March,
    CASE WHEN MONTH(tran_dt) = 4 THEN amt ELSE 0 END AS April,
    CASE WHEN MONTH(tran_dt) = 5 THEN amt ELSE 0 END AS May,
    CASE WHEN MONTH(tran_dt) = 6 THEN amt ELSE 0 END AS June,
    CASE WHEN MONTH(tran_dt) = 7 THEN amt ELSE 0 END AS July,
    CASE WHEN MONTH(tran_dt) = 8 THEN amt ELSE 0 END AS August,
    CASE WHEN MONTH(tran_dt) = 9 THEN amt ELSE 0 END AS September,
    CASE WHEN MONTH(tran_dt) = 10 THEN amt ELSE 0 END AS October,
    CASE WHEN MONTH(tran_dt) = 11 THEN amt ELSE 0 END AS November,
    CASE WHEN MONTH(tran_dt) = 12 THEN amt ELSE 0 END AS December
FROM  tran_dtl;