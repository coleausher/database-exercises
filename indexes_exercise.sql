USE employees;

SHOW TABLES;

DESCRIBE current_dept_emp;

DESCRIBE departments;

DESCRIBE dept_emp;

DESCRIBE dept_emp_latest_date;

DESCRIBE dept_manager;

DESCRIBE employees;

describe salaries;

DESCRIBE titles;

USE codeup_test_db;

SHOW TABLES;

DESCRIBE albums;

ALTER TABLE albums
    ADD UNIQUE (record_name);

SELECT * FROM albums
WHERE record_name = 'Thriller';

INSERT INTO albums (artist_name, record_name, release_date, genre, sales)
VALUES ('Peter Jackson', 'Thriller', 1982, 'Pop, post-disco, funk, rock', 51.2);