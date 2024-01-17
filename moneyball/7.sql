SELECT first_name, last_name
FROM players p JOIN salaries s ON p.id = s.player_id
ORDER BY salary DESC
LIMIT 1;
