-- Rename perct_of_marks from marks table to percent_marks.
USE school;
ALTER TABLE marks 
RENAME COLUMN perct_of_marks TO percent_marks;
DESCRIBE marks;