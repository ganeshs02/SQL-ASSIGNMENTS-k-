-- Generate report showing number of members registered per month per store.
USE retail;
SELECT store_id,MONTH(reg_date) AS month,COUNT(*) 
FROM `member` m 
GROUP BY month;