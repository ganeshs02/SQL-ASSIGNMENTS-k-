-- Generate report showing average price for baked goods category.
USE retail;
SELECT AVG(price) As backed_goods FROM product
WHERE category = 'Baked goods';