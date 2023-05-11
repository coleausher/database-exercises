USE employees;

SELECT DISTINCT first_name
FROM employees;
# THESE TWO ARE DO THE SAME THING
SELECT first_name
FROM employees
GROUP BY first_name;

# COUNT HOW MANY FIRST NAMES
SELECT COUNT(first_name), first_name
FROM employees
GROUP BY first_name

# COUNT(*) //// * means all \\\\ just having COUNT gives a number
SELECT COUNT(*)
FROM employees

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;


