-- Generate a report with all members who registered in store (1,2)
USE retail;
SELECT * FROM member 
WHERE store_id in (1,2);