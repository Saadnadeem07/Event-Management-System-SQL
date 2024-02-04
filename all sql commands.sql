CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (id, name, salary) VALUES (1, 'John Doe', 50000);

SELECT * FROM employees;

SELECT name, salary FROM employees;

UPDATE employees SET salary = 55000 WHERE id = 1;

DELETE FROM employees WHERE id = 1;

SELECT * FROM employees WHERE salary > 50000;

SELECT * FROM employees ORDER BY salary DESC;

SELECT employees.name, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.id;

SELECT department, AVG(salary) as avg_salary FROM employees GROUP BY department;

CREATE INDEX idx_salary ON employees(salary);

DROP INDEX idx_salary ON employees;

DESCRIBE employees;

SELECT * FROM employees LIMIT 10;

SELECT department, COUNT(*) as num_employees
FROM employees
WHERE salary > 50000
GROUP BY department;
