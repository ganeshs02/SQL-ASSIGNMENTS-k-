-- Generate report showing max price for frozen category.
USE retail;
SELECT MAX(price) FROM product
WHERE category = 'frozen';