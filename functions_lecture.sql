USE codeup_test_db;

    SELECT CONCAT('Hello ', 'Codeup', '!');

-- Concatenates columns from queries
SELECT CONCAT(artist_name, ' - ', record_name)
FROM albums
WHERE id = 1;

-- find similar to queries
SELECT record_name
FROM albums
WHERE record_name
          LIKE 'Thriller';

-- find not similar to queries
SELECT record_name
FROM albums
WHERE record_name
          NOT LIKE 'Thriller';

-- find string pattern of query
SELECT record_name
FROM albums
WHERE record_name
          LIKE '%er%';

-- Day/Time format (YYYY-MM-DD)
SELECT DAYOFMONTH('1990-05-03');

SELECT DAY('2017-03-25');

SELECT YEAR('1987-01-01');
# ----------------------------------------------------------------
USE employees;

SELECT *
FROM employees
WHERE year(birth_date)
    BETWEEN 1950
    AND 1959
  AND month(birth_date) = 7
  AND day(birth_date) = 4;

# time format (HH:MM:SS)
SELECT NOW();
# NOW() returns date and time YYYY-MM-DD HH:MM:SS

# CURDATE() returns today's date (no time)
SELECT CURDATE();

# CURTIME() returns today's time (no date)
SELECT CURTIME();

SELECT CONCAT(
               'Teaching people to code for ',
# UNIX_TIMESTAMP() starts at January 1st 1970 and then pass in today's date and it will count and return the seconds
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );

SELECT UNIX_TIMESTAMP();

SELECT UNIX_TIMESTAMP('2014-02-04');

