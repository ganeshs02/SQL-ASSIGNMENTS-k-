-- Generate report showing tran_id, member_id, store_id and tran_dt from tran_hdr table.
USE retail;
SELECT tran_id,member_id,store_id,tran_dt  FROM tran_hdr;