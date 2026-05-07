SELECT emp_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

SELECT 
    e.emp_name,
    e.salary,
    (
        SELECT AVG(salary)
        FROM Employees
        WHERE dept_id = e.dept_id
    ) AS dept_avg_salary
FROM Employees e;