-- Generate report showing product _id,description,month,monthly_sale,sale_upto_this_month.


SELECT * ,SUM(sub.monthly_sale) OVER(PARTITION BY sub.product_id ORDER BY sub.month) AS sale_upto_this_month FROM
(SELECT td.product_id ,p.description ,MONTH(td.tran_dt) AS month ,
    SUM(td.amt) AS monthly_sale  
FROM tran_dtl td 
  JOIN product p ON p.product_id =td.product_id 
GROUP BY product_id ,month)sub;