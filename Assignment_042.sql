-- Generate a report with all members who are not regeistered in store 2
USE retail;
SELECT * FROM member 
WHERE store_id !=2  ;