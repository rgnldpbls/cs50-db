SELECT year, ROUND(AVG(salary), 2) AS Average_Salary
FROM salaries
GROUP BY year
ORDER BY 1 DESC;
