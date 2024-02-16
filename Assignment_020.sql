-- Rename donor address column from donor table to permanent_address.
USE blood_bank;
ALTER TABLE donor 
RENAME COLUMN address TO permanent_address;
DESCRIBE donor;