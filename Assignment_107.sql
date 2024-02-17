-- Generate report showing number of transaction for each member in which he/she had purchased ‘bread’
-- .(member_id,num_tran)
USE retail;
SELECT member_id,COUNT(*) AS num_tran FROM tran_hdr 
WHERE tran_id IN (
  SELECT tran_id FROM tran_dtl td 
  WHERE product_id IN (
    SELECT  product_id FROM product 
    WHERE description = 'bread'))
 GROUP BY member_id ;