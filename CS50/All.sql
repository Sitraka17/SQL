--In 1.sql, write a SQL query to list the names of all songs in the database.
--Your query should output a table with a single column for the name of each song.

SELECT name
FROM songs;


--n 2.sql, write a SQL query to list the names of all songs in increasing order of tempo.
--Your query should output a table with a single column for the name of each song.

SELECT name FROM songs ORDER BY tempo;
