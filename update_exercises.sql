USE codeup_test_db;

-- All albums in your table.
SELECT record_name AS 'All the record names'
FROM albums;
-- update statement
UPDATE albums
SET sales = sales * 10
WHERE sales;
-- to see the output use the SELECT statement
SELECT artist_name, record_name, sales FROM albums;

-- All albums released before 1980
SELECT record_name AS 'All albums release before 1980'
FROM albums
WHERE release_date < 1980;
-- update statement
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
-- to see the output use the SELECT statement
SELECT artist_name, record_name, release_date FROM albums;

-- All albums by Michael Jackson
SELECT record_name AS 'ALL albums by Michael Jackson'
FROM albums
WHERE artist_name = 'Michael Jackson';
-- update statement
UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
-- to see the output use the SELECT statement
SELECT artist_name, record_name
FROM albums
WHERE artist_name = 'Peter Jackson';