USE blood_bank;
ALTER TABLE donor 
ADD COLUMN dob DATE NOT NULL 
AFTER last_name;

DESCRIBE donor;