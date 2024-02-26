-- Generate report showing store_id,month,total_sale,prev_3 month_avg sale.
USE retail;


SELECT sub.*,
AVG(total_sale) OVER(PARTITION BY sub.store_id ORDER BY sub.store_id,sub.month 
ROWS BETWEEN 3 PRECEDING AND 1 PRECEDING) AS avg_sale 
FROM
(SELECT th.store_id,MONTH(td.tran_dt) AS month ,COUNT(*) AS total_sale
FROM tran_hdr th JOIN tran_dtl td ON th.tran_id =td.tran_id 
GROUP BY th.store_id ,month) sub;