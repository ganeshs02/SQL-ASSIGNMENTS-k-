-- Rename price column from book table as book_price.

USE library;
ALTER TABLE book_dtl 
RENAME COLUMN price TO book_price;