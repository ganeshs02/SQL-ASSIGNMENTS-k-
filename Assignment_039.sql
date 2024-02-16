-- Generate a report with all members who member id is less than 1500
USE retail;
SELECT * FROM member 
WHERE member_id < 1500;