-- Generate report showing tran_dtl table only for products belonging to ‘grocery’category.
USE retail;
SELECT * FROM tran_dtl td 
WHERE product_id in (
  SELECT product_id FROM product p 
  WHERE category = 'Grocery');