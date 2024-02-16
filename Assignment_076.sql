-- Generate report showing total salary withdrawn by all employees.
USE emp;
SELECT emp_no,SUM(salary) FROM salaries
GROUP BY emp_no ;
