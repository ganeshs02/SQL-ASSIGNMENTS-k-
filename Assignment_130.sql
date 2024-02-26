-- Generate report showing number of transactions per store for each member.
-- (member_id,store1_tran,store2_tran,store3_tran)


SELECT sub.member_id,
MAX(CASE WHEN sub.store_id = 1 THEN sub.stores_tran END) AS store1_tran,
MAX(CASE WHEN sub.store_id = 2 THEN sub.stores_tran END)AS store2_tran,
MAX(CASE WHEN sub.store_id = 3 THEN sub.stores_tran END) AS store3_tran
FROM
(SELECT th.member_id ,th.store_id ,COUNT(th.tran_id) AS stores_tran
FROM tran_hdr th
GROUP BY th.member_id ,th.store_id)sub
GROUP BY sub.member_id;
