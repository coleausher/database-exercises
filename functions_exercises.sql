USE employees;


SELECT * FROM employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name
 ASC;

SELECT *
FROM employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC, last_name DESC;

SELECT *
FROM employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;


# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT (first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE 'e%' AND last_name LIKE '%e'
ORDER BY emp_no DESC;


SELECT * FROM employees
WHERE last_name LIKE '%q%';



# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 2000;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT *, DATEDIFF(NOW(), hire_date) AS days_worked
FROM employees
WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 2000;



