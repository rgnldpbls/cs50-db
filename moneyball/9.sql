SELECT t.name, ROUND(AVG(salary), 2) AS Average_Salary
FROM teams t JOIN salaries s ON t.id = s.team_id
WHERE s.year = 2001
GROUP BY 1
ORDER BY 2
LIMIT 5;
