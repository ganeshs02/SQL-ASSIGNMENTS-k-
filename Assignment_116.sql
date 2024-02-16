-- Generate report that shows title wise number of 
-- employees in each department. 
-- (show department number and department name)

USE emp;
SELECT d.dept_no ,d.dept_name ,t.title ,
COUNT(*) AS total_emps
FROM departments d 
JOIN dept_emp de ON d.dept_no =de.dept_no 
JOIN titles t ON de.emp_no =t.emp_no 
GROUP BY d.dept_no ,t.title ;