-- Generate report showing product _id,description,month,monthly_sale,previous_month_sale
USE retail;
SELECT *, LAG(monthly_sale) OVER(PARTITION BY sub.product_id ORDER BY sub.product_id) 
  FROM 
(SELECT td.product_id ,p.description ,
  MONTH(td.tran_dt) AS month,SUM(td.amt) AS monthly_sale
FROM tran_dtl td 
JOIN product p 
    ON p.product_id =td.product_id 
GROUP BY td.product_id ,month) sub;
