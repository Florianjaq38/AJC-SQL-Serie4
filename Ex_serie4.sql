#1
SELECT last_name, employees.department_id, department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id;

#2
SELECT DISTINCT job_id
FROM employees
WHERE department_id = 30;

#3
SELECT DISTINCT last_name, department_name, CONCAT(street_address, ' ', postal_code, ' ', city, ' ', state_province) AS 'Localisation'
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
WHERE commission_pct IS NOT NULL;

#4
SELECT last_name, department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE last_name LIKE '%a%';

#5
SELECT last_name, job_id, departments.department_id, department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
WHERE city = 'Seattle';