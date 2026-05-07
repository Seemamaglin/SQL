//Row_number()

SELECT 
    emp_name,
    dept_id,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS row_num
FROM Employees;

//Rank()

SELECT 
    emp_name,
    dept_id,
    salary,
    RANK() OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM Employees;

//dense_rank()

SELECT 
    emp_name,
    dept_id,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS dense_salary_rank
FROM Employees;

//Lead

SELECT 
    emp_name,
    dept_id,
    salary,
    LEAD(salary) OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS next_salary
FROM Employees;

//LAG 

SELECT 
    emp_name,
    dept_id,
    salary,
    LAG(salary) OVER (
        PARTITION BY dept_id
        ORDER BY salary DESC
    ) AS previous_salary
FROM Employees;