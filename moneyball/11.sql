SELECT first_name, last_name, (salary / H) AS dollars_per_hit
FROM players p JOIN salaries s ON p.id = s.player_id JOIN performances pe ON p.id = pe.player_id
WHERE H > 0 and s.year = 2001 and pe.year = 2001
ORDER BY 3, 1, 2
LIMIT 10;
