-- Generate report showing tran-hdr table
-- only for those members who had registered
-- in the month of ‘May’ of any year.
USE retail;
SELECT * FROM tran_hdr 
WHERE member_id IN (
  SELECT member_id FROM member 
  WHERE MONTH(reg_date) = 5
  );