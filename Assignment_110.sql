-- Generate report showing tran_hdr
-- table only for those transaction
-- in which at least one product starting
-- from ‘L’ is purchased.
USE retail;

SELECT * FROM tran_hdr 
WHERE tran_hdr.tran_id IN (
  SELECT tran_id FROM tran_dtl
  WHERE product_id IN (
      SELECT product_id FROM product
      WHERE description LIKE 'l%')
  GROUP BY tran_id);