-- Generate report showing member_id,month,total_sale,last_3 month_total sale.

USE retail;
SELECT sub2.member_id,sub2.month,sub2.total_sale,SUM(sub2.total_sale) OVER(PARTITION BY sub2.member_id) AS month_total
FROM
  (SELECT sub.*,
  RANK() OVER(PARTITION BY sub.member_id ORDER BY sub.month DESC) AS rnk
  FROM
      (SELECT th.member_id ,MONTH(td.tran_dt) AS month,SUM(td.amt) AS total_sale 
       FROM tran_dtl td
       JOIN tran_hdr th ON td.tran_id =th.tran_id 
       GROUP BY th.member_id ,month) sub)sub2
WHERE sub2.rnk < 4;