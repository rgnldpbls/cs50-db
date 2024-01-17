SELECT city, COUNT(type)
FROM schools
WHERE type = 'Public School'
GROUP BY city
ORDER BY 2 DESC, city
LIMIT 10;
