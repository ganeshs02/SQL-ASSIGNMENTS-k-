-- Generate a report with all members who's first name end with "a"
USE retail;
SELECT * FROM member 
WHERE first_name LIKE "%a";