-- Generate report showing member details
-- for those members who had purchased ‘milk’
-- and ‘apple’ in single transaction.
--  (member_id,first_name,last_name)
USE retail;

SELECT member_id ,first_name ,last_name  FROM member 
WHERE member_id IN (
  SELECT member_id FROM tran_hdr 
  WHERE tran_id IN(
    SELECT tran_id  FROM tran_dtl 
    WHERE product_id IN (34,42)
    GROUP BY tran_id
    HAVING COUNT(DISTINCT product_id ) =2
    )
  );