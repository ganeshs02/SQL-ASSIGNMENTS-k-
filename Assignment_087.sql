-- Generate report showing number of members registered per month per store.
USE retail;
SELECT store_id,MONTH(tran_dt) AS month,COUNT(*) AS total_no_members FROM tran_hdr 
GROUP BY member_id ,MONTH(tran_dt);