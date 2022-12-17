--In 1.sql, write a SQL query to list the names of all songs in the database.
--Your query should output a table with a single column for the name of each song.

SELECT name
FROM songs;


--n 2.sql, write a SQL query to list the names of all songs in increasing order of tempo.
--Your query should output a table with a single column for the name of each song.

SELECT name FROM songs ORDER BY tempo;
SELECT name FROM songs ORDER BY duration_ms DESC LIMIT 5;


SELECT distinct(name) FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE movies.title IN(SELECT distinct(movies.title) FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE people.name = "Kevin Bacon" AND people.birth = 1958) AND people.name != "Kevin Bacon";
