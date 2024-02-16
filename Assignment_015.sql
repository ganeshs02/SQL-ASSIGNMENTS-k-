-- Create new column in student table for standard.
USE school;
ALTER TABLE student 
ADD COLUMN standard INT NOT NULL;
