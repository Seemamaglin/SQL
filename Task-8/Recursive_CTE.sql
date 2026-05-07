ALTER TABLE Employees
ADD COLUMN manager_id INT;

UPDATE Employees SET manager_id = NULL WHERE emp_id = 1;  -- CEO
UPDATE Employees SET manager_id = 1 WHERE emp_id = 2;
UPDATE Employees SET manager_id = 1 WHERE emp_id = 3;
UPDATE Employees SET manager_id = 2 WHERE emp_id = 4;
UPDATE Employees SET manager_id = 2 WHERE emp_id = 5;

WITH RECURSIVE OrgChart AS (
    -- Anchor member (top-level employee)
    SELECT 
        emp_id,
        emp_name,
        manager_id,
        1 AS level
    FROM Employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive member
    SELECT 
        e.emp_id,
        e.emp_name,
        e.manager_id,
        o.level + 1
    FROM Employees e
    JOIN OrgChart o
    ON e.manager_id = o.emp_id
)
SELECT * FROM OrgChart;