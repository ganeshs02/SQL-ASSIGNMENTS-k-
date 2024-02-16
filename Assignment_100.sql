-- Generate report showing total number of transaction in which product 17 was purchased.
USE retail;
SELECT COUNT(*) AS total_no_of_trans FROM tran_dtl 
GROUP BY product_id 
HAVING product_id = 17;