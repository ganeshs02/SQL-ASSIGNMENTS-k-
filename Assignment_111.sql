-- Generate report showing no. of
-- transactions per member in which
-- he had not purchased any product
-- from ‘dairy’category.
USE retail;

SELECT member_id ,COUNT(*) FROM tran_hdr 
WHERE member_id IN 
(SELECT member_id FROM tran_hdr 
WHERE tran_id IN
(SELECT DISTINCT tran_id FROM tran_dtl 
WHERE product_id NOT IN 
(SELECT product_id FROM product
WHERE category ='dairy')))
GROUP BY member_id ;