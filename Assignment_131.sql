-- Generate report showing number of product per category according to product classification.
-- (category,high_value,med_value,low_value,total_products)
USE retail;
SELECT category,
MAX(price) OVER(PARTITION BY category) AS high_value,
(MAX(price) OVER(PARTITION BY category)+MIN(price) OVER(PARTITION BY category))/2
 AS med_value,
MIN(price) OVER(PARTITION BY category)AS low_value,
COUNT(product_id) OVER(PARTITION BY category) AS total_products
FROM product;