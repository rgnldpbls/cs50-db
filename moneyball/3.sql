SELECT year, HR
FROM players p JOIN performances pe ON p.id = pe.player_id
WHERE first_Name = 'Ken' and last_Name = 'Griffey' and birth_year = 1969
ORDER BY 1 DESC;
