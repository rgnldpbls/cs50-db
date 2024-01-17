SELECT DISTINCT(t.name)
FROM players p JOIN performances pe ON p.id = pe.player_id JOIN teams t ON pe.team_id = t.id
WHERE first_Name = 'Satchel' and last_Name = 'Paige';

