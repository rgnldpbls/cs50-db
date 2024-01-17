SELECT year, salary
FROM players p JOIN salaries s ON p.id = s.player_id
WHERE first_Name = 'Cal' and last_Name = 'Ripken'
ORDER BY 1 DESC;
