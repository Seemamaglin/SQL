SELECT SUM(salary) AS total_salary
FROM Employees;

SELECT AVG(salary) AS average_salary
FROM Employees;

SELECT department, COUNT(*) AS employee_count
FROM Employees
GROUP BY department;

SELECT department, ROUND(AVG(salary),2) AS avg_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 50000;