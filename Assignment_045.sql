-- Generate a report with all members who's first name does not start with "Ja"
USE retail;
SELECT * FROM member 
WHERE first_name NOT LIKE  "Ja%";