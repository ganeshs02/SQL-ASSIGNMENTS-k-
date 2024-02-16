-- Generate report showing category wise number of products having price less than 1.
USE retail;
SELECT * FROM product
WHERE price < 1
ORDER BY category ;