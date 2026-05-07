DROP Table IF EXISTS Employees;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary NUMERIC(10,2)
);
INSERT INTO Employees (emp_id, emp_name, age, department, salary)
VALUES
(1, 'Arun', 25, 'IT', 50000),
(2, 'Priya', 28, 'HR', 45000),
(3, 'Kiran', 30, 'Finance', 60000),
(4, 'Meena', 26, 'IT', 52000),
(5, 'Ravi', 32, 'Marketing', 48000);

SELECT * FROM Employees;