SELECT name,
  (SELECT COUNT(DISTINCT(
role_id
))
   FROM player_match
   WHERE player_id = 
id
   GROUP BY player_id) AS 
positions
FROM player
ORDER BY positions DESC
LIMIT 3;
