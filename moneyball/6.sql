SELECT t.name, SUM(H) AS total_hits
FROM teams t JOIN performances p ON t.id = p.team_id
WHERE p.year = 2001
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
