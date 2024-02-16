-- Generate a report with all members who have registered in store no 1
USE retail;
SELECT * FROM member 
WHERE store_id = 1;