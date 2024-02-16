-- Drop permanent_address column
USE blood_bank;
ALTER TABLE donor 
DROP COLUMN permanent_address ;
DESCRIBE donor;