-- Generate report showing maximum salary withdrawn.
USE emp;
SELECT MAX(salary) AS maximum_sal FROM salaries;