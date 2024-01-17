SELECT d.name, s.evaluated
FROM districts d JOIN staff_evaluations s ON d.id = s.district_id
WHERE evaluated BETWEEN 95 AND 100
ORDER BY 2 DESC;
