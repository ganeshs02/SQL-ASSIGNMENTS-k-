-- Generate report showing number of employees born in year 1960.
USE emp;
SELECT COUNT(*) AS emp_born_in_1960 FROM employees
WHERE YEAR(birth_date) = 1960;