SELECT first_name, last_name, salary
FROM players p JOIN salaries s ON p.id = s.player_id
WHERE year = 2001
ORDER BY 3, 1, 2, p.id
LIMIT 50;
