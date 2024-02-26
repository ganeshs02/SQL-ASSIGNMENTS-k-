-- Generate report showing store_id,month,no_transactions,rank_month.(highest transactions-Rank 1)

SELECT *, RANK() OVER(PARTITION BY store_id ORDER BY sub.no_transactions DESC) AS rank_month 
FROM 
(SELECT store_id ,MONTH(tran_dt) AS month ,COUNT(*) AS no_transactions
FROM tran_hdr th 
GROUP BY store_id ,month)sub ;