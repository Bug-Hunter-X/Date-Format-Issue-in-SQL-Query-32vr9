SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND hire_date < CAST('2022-01-01' AS DATE); -- Using CAST to ensure date format compatibility

-- Alternatively, use parameterized queries to prevent issues with date formats:
PREPARE stmt FROM 'SELECT * FROM employees WHERE department = ? AND salary > ? AND hire_date < ?';
SET @department = 'Sales';
SET @salary = 100000;
SET @date = '2022-01-01';
EXECUTE stmt USING @department, @salary, @date;