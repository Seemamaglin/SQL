//create stored procedures

CREATE OR REPLACE PROCEDURE get_employees_by_date(
    start_date DATE,
    end_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM emp_id, emp_name, join_date, salary
    FROM Employees
    WHERE join_date BETWEEN start_date AND end_date;
END;
$$;

CALL get_employees_by_date('2024-03-01', '2024-04-30');

CREATE OR REPLACE FUNCTION calculate_bonus(emp_salary NUMERIC)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
BEGIN
    IF emp_salary >= 50000 THEN
        RETURN emp_salary * 0.10;
    ELSE
        RETURN emp_salary * 0.05;
    END IF;
END;
$$;

SELECT 
    emp_name,
    salary,
    calculate_bonus(salary) AS bonus
FROM Employees;