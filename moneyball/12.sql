-- SELECT p.id, (salary / RBI) AS dollars_per_rbi
-- FROM players p JOIN salaries s ON p.id = s.player_id JOIN performances pe ON p.id = pe.player_id
-- WHERE s.year = 2001 and pe.year = 2001 and RBI > 0
-- ORDER BY 2
-- LIMIT 10;

-- SELECT p.id, (salary / H) AS dollars_per_hit
-- FROM players p JOIN salaries s ON p.id = s.player_id JOIN performances pe ON p.id = pe.player_id
-- WHERE H > 0 and s.year = 2001 and pe.year = 2001
-- ORDER BY 2
-- LIMIT 10;

SELECT first_name, last_name
FROM players
WHERE id IN(15102, 8885, 15250, 10956, 11014, 12600)
ORDER BY id;
