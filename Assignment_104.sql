-- Generate report showing tran_hdr table only for those members who had registered in store 1.
USE retail;
SELECT * FROM tran_hdr th 
WHERE member_id in (
  SELECT member_id FROM member 
  WHERE store_id = 1);