/*
 * Generate report showing only those employees from above report 
 * who have withdrawn total salary in between 400000 to 500000 and
 * arrange them in descending order by salary withdrawn.
*/
USE emp;
SELECT emp_no ,SUM(salary) AS total_salary FROM salaries
GROUP BY emp_no 
HAVING SUM(salary) BETWEEN 400000 AND 500000
ORDER BY SUM(salary) DESC;