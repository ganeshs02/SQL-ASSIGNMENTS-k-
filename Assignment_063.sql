/*
Select all details from employee table with one additional column - "age_cat"
1. young - age less than or equal to 30
2. midium - age between 30 to 50
3. old - age above 50
*/
USE emp;
SELECT *,CASE 
	WHEN (YEAR(CURRENT_DATE)-YEAR(birth_date)) <= 30 THEN 'young'
	WHEN (YEAR(CURRENT_DATE)-YEAR(birth_date)) BETWEEN 30 AND 50 THEN 'midium'
	WHEN (YEAR(CURRENT_DATE)-YEAR(birth_date)) > 50 THEN 'old'
END AS age_cat
FROM employees;