-- Generate report showing number of transaction per member per quarter (member_id,qtr,num_tran)
use retail;
SELECT member_id,QUARTER(tran_dt) AS qtr ,COUNT(*) AS num_tran
FROM tran_hdr
GROUP BY member_id ,qtr;