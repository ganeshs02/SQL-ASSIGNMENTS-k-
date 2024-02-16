-- Generate report showing total salary withdrawn from company for each employee.
USE emp;
SELECT emp_no ,SUM(salary) AS total_salary FROM salaries
GROUP BY emp_no ;