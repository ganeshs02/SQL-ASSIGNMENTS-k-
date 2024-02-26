-- Generate report showing number of members registered per store per quarter.
-- (store_id,store_city,qtr1_reg,qtr2_reg,qtr3_reg,qtr4_reg)

USE retail;
SELECT sub.store_id,sub.store_city,
MAX(CASE WHEN sub.qtr=1 THEN sub.reg END ) AS qtr1_reg,
MAX(CASE WHEN sub.qtr=2 THEN sub.reg END ) AS qtr2_reg,
MAX(CASE WHEN sub.qtr=3 THEN sub.reg END ) AS qtr3_reg,
MAX(CASE WHEN sub.qtr=4 THEN sub.reg END ) AS qtr4_reg
FROM
(SELECT s.store_id ,s.store_city ,QUARTER(m.reg_date) AS qtr,COUNT(m.member_id) AS reg
FROM member m
JOIN store s ON m.store_id =s.store_id 
GROUP BY s.store_id ,qtr)sub
GROUP BY sub.store_id;