-- Generate report showing tran_dtl table only for those products which had ‘chee’ in their description.
USE retail;
SELECT * FROM tran_dtl 
WHERE product_id IN (
  SELECT product_id FROM product 
  WHERE description LIKE '%chee%');
  
