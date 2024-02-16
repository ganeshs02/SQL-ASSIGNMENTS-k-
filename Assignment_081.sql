-- Generate report showing employees who have worked in more than one department.
USE emp;
SELECT emp_no FROM 	dept_emp 
GROUP BY emp_no 
HAVING COUNT(*) > 1;

