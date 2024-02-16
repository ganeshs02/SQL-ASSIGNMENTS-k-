-- Delete age column.
USE blood_bank;
ALTER TABLE donor 
ADD COLUMN age INT NOT NULL
AFTER dob;


ALTER TABLE donor 
DROP COLUMN age;

DESCRIBE donor;