-- Generate report showing total number of managers for each department.
USE emp;
SELECT dept_no,COUNT(*) AS total_no_mgr FROM dept_manager
GROUP BY dept_no ;