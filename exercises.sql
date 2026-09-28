-- Exercise 1
SELECT
    employees.name AS employee_name,
    departments.name AS department
FROM employees
JOIN departments
ON employees.department_id = departments.id;


-- Exercise 2
SELECT
    employees.name AS employee_name,
    employees.salary,
    departments.name AS department
FROM employees
JOIN departments
ON employees.department_id = departments.id;


-- Exercise 3
SELECT
    employees.name AS employee_name,
    departments.name AS department
FROM employees
JOIN departments
ON employees.department_id = departments.id
WHERE departments.name = 'IT';


-- Exercise 4
SELECT
    employees.name AS employee_name,
    employees.salary,
    departments.name AS department
FROM employees
JOIN departments
ON employees.department_id = departments.id
WHERE departments.name = 'IT'
AND employees.salary > 1000;


-- Exercise 5
SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC;


-- Exercise 6
SELECT
    name,
    salary
FROM employees
WHERE salary BETWEEN 900 AND 1500;


-- Exercise 7
SELECT
    employees.name AS employee_name,
    departments.name AS department
FROM employees
JOIN departments
ON employees.department_id = departments.id
WHERE departments.name = 'IT'
OR departments.name = 'Finance';


-- Exercise 8
SELECT
    name,
    salary
FROM employees
WHERE salary >= 1200
ORDER BY salary DESC;

SELECT
    employees.name AS employee_name,
    departments.name AS department,
    employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.id
WHERE employees.salary >= 1200
AND departments.name != 'HR'
ORDER BY employees.salary DESC
LIMIT 5;