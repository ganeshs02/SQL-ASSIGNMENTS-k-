-- Generate report showing classification of member based on number of products
-- (in quantity) purchased by him (member_id,total_qty_prod,classification)
USE retail;
DESCRIBE tran_dtl ;
DESCRIBE tran_hdr ;

SELECT tran_hdr.member_id AS member_id, tran_dtl.qty AS total_qty_prod,
CASE 
	WHEN tran_dtl.qty  >= 5 THEN 'max perchaced'
	WHEN tran_dtl.qty  >=4  THEN '4/5 perchased'
	WHEN tran_dtl.qty  >=3  THEN '3/5 perchased'
	ELSE 'minimum perchased'
END AS classification
FROM tran_hdr 
JOIN tran_dtl  ON tran_hdr.tran_id = tran_dtl.tran_id ;
