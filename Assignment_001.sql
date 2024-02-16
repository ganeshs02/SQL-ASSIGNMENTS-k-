CREATE DATABASE library;
USE library;
CREATE TABLE book_dtl(
book_id    INT PRIMARY KEY,
book_name  VARCHAR(30),
authore_name VARCHAR(20),
num_pages    INT,
price        FLOAT
);