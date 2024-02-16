-- Generate report showing min price for beverages category.
USE retail;
SELECT MIN(price) FROM product
WHERE category = 'Beverages';