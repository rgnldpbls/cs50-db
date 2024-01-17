CREATE VIEW most_populated AS
SELECT district, SUM(families) AS Total_Families, SUM(households) AS Total_Household, SUM(population) AS Total_Population, SUM(male) AS Total_Male, SUM(female) AS Total_Female
FROM census
GROUP BY district
ORDER BY 4 DESC;
