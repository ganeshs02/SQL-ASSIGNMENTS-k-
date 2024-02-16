-- Generate a report with all members who's first name start with "Ja"
USE retail;
SELECT * FROM member 
WHERE first_name LIKE "Ja%";