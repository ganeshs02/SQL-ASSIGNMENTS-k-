-- Generate report showing tran_ID,member_id,reg_store,tran_dt
USE retail;
SELECT th.tran_id,th.member_id,s.store_state AS reg_store,th.tran_dt
FROM tran_hdr th 
JOIN store s ON s.store_id =th.store_id ;