-- Generate a report that shows product_id, description,
-- category for all products belonging to any two categories

USE retail;
SELECT product_id,description,category FROM product
WHERE category = 'Baked goods' OR category ='Beverages';