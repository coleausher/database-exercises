USE employees;
SELECT CONCAT(emp_no, ' - ' , last_name, ' ', first_name) AS full_name, birth_date
FROM employees
GROUP BY emp_no, full_name, last_name
    LIMIT 10;
