-- Generate report showing details of all products from category which had least number of products.
--  (product_id,description,category,price)


USE retail;
SELECT product_id ,description ,category ,price 
FROM product 
WHERE category  in (
     SELECT category  FROM product 
     GROUP BY category 
     HAVING COUNT(*) = 
         (SELECT MIN(cat.cnt_product) AS min 
         FROM (SELECT category,COUNT(*) AS cnt_product FROM product p GROUP BY category) cat
        )
       );
