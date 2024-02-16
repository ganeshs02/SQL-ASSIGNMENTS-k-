-- Create new columns perct_of_marks in mark table.
USE school;
DESCRIBE marks ;
ALTER TABLE marks 
ADD COLUMN perct_of_marks FLOAT(3,2) NOT NULL;