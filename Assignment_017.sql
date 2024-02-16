-- Create new column donor address in donor table.
SHOW DATABASES;
USE blood_bank;
DESCRIBE donor;
ALTER TABLE donor 
ADD COLUMN address VARCHAR(30) NOT NULL;
