USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT artist_name AS 'info' FROM albums WHERE artist_name = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT artist_name AS 'Artist Name', record_name AS 'Album name', release_date AS 'Release date'
FROM albums
WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind -- we don't have Nevermind in our list, so I will do 'Born in the U.S.A.'
SELECT genre AS 'Genre Born in the U.S.A.'
FROM albums
WHERE record_name = 'Born in the U.S.A.';

-- Which albums were released in the 1990s
SELECT release_date AS 'Albums released in the 1990s'
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;


-- Which albums had less than 20 million certified sales
SELECT sales AS 'Albums release in the 1990s'
FROM albums
WHERE sales < 20;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT record_name AS 'Albums with genre of Rock'
FROM albums
WHERE genre = 'rock';