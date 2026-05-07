WITH DeptAvgSalary AS (
    SELECT dept_id, ROUND(AVG(salary),2) AS avg_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT 
    e.emp_name,
    e.salary,
    d.avg_salary
FROM Employees e
JOIN DeptAvgSalary d
ON e.dept_id = d.dept_id
WHERE e.salary > d.avg_salary;