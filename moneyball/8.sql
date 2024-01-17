SELECT salary
FROM performances pe JOIN players p ON pe.player_id = p.id JOIN salaries s ON p.id = s.player_id
WHERE pe.year = 2001 and s.year = 2001
ORDER BY HR DESC
LIMIT 1;
