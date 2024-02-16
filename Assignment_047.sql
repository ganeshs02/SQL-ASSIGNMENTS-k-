-- Generate report showing product table with one added column prod_cat that classifies product 
-- with average price of all products.(greater & smaller than avg_price )
USE retail;
SELECT * ,
CASE 
	WHEN price < (SELECT AVG(price) FROM product ) THEN 'smaller than avg_price'
	ELSE 'greater than avg_price'
END AS prod_cat
FROM product;

SELECT AVG(price) FROM product;