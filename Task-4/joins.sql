CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Departments (dept_id, dept_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

ALTER TABLE Employees
ADD COLUMN dept_id INT;

ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (dept_id)
REFERENCES Departments(dept_id);

UPDATE Employees SET dept_id = 1 WHERE department = 'IT';
UPDATE Employees SET dept_id = 2 WHERE department = 'HR';
UPDATE Employees SET dept_id = 3 WHERE department = 'Finance';
UPDATE Employees SET dept_id = 4 WHERE department = 'Marketing';

SELECT 
    e.emp_name,
    d.dept_name,
    e.salary
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

SELECT 
    e.emp_name,
    d.dept_name,
    e.salary
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;