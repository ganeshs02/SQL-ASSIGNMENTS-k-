-- Generate report showing store_id,month,total_monthly_sale,rank_month.(highest sale – Rank  1)

SELECT * ,
RANK() OVER(PARTITION BY sub.store_id ORDER BY sub.total_monthly_sale) AS rank_month
FROM
(SELECT th.store_id ,MONTH(th.tran_dt) AS month ,SUM(td.amt) AS total_monthly_sale
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id =td.tran_id 
GROUP BY store_id ,month) sub;