SELECT d.name, per_pupil_expenditure
FROM districts d JOIN expenditures e ON e.district_id = d.id
WHERE d.type = 'Public School District'
ORDER BY 2 DESC
LIMIT 10;
