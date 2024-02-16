-- Rename standard column from student table to student_std
USE school;
ALTER TABLE student 
RENAME COLUMN standard to student_std;
DESCRIBE student;