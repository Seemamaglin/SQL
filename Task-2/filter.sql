SELECT * FROM employees
WHERE department='IT';

SELECT * 
FROM Employees
WHERE department = 'HR' OR department = 'Marketing';

SELECT * 
FROM Employees
ORDER BY salary ASC;

SELECT * 
FROM Employees
ORDER BY emp_name ASC;

SELECT * 
FROM Employees
WHERE department = 'IT' AND salary > 50000
ORDER BY salary DESC;