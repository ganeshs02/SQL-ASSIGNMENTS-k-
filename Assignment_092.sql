-- Generate report showing no. of products per category.
USE retail;
SELECT category, COUNT(*) AS no_of_products FROM product
GROUP BY category ;