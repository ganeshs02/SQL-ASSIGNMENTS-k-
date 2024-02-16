-- Insert 3 products to product table with description field as empty
USE retail;
SELECT * FROM product;

INSERT INTO product(product_id,price,category,max_qty)
VALUES 
(111,5.5,'Junk Food',6),
(112,4.5,'Junk Food',7),
(113,3.5,'Junk Food',8);