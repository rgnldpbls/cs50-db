SELECT first_name, last_name, salary, HR, s.year
FROM players p JOIN salaries s ON p.id = s.player_id JOIN performances pe ON p.id = pe.player_id
WHERE s.year = pe.year
ORDER BY p.id, 5 DESC, 4 DESC, 3 DESC;

