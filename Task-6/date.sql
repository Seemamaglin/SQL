ALTER TABLE Employees
ADD COLUMN join_date DATE;

UPDATE Employees SET join_date = '2024-01-05' WHERE emp_id = 1;
UPDATE Employees SET join_date = '2024-02-10' WHERE emp_id = 2;
UPDATE Employees SET join_date = '2024-03-15' WHERE emp_id = 3;
UPDATE Employees SET join_date = '2024-04-01' WHERE emp_id = 4;
UPDATE Employees SET join_date = '2024-04-20' WHERE emp_id = 5;

SELECT CURRENT_DATE;


//date difference

SELECT 
    emp_name,
    join_date,
    CURRENT_DATE - join_date AS days_worked
FROM Employees;

//add days to date

SELECT 
    emp_name,
    join_date,
    join_date + INTERVAL '30 days' AS confirmation_date
FROM Employees;

filter records based on date

SELECT *
FROM Employees
WHERE join_date BETWEEN '2024-03-01' AND '2024-04-30';

//format To_char

SELECT 
    emp_name,
    TO_CHAR(join_date, 'DD-MM-YYYY') AS formatted_join_date
FROM Employees;