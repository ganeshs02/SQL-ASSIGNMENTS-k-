-- Generate report showing all details of product which had min price.
-- (product_id,description,category,price)
SELECT product_id,description,category,price 
FROM product 
WHERE price IN (SELECT MIN(price) FROM product);