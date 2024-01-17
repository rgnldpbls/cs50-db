SELECT d.name, per_pupil_expenditure, exemplary
FROM districts d JOIN expenditures e ON d.id = e.district_id JOIN staff_evaluations s ON d.id = s.district_id
WHERE d.type = 'Public School District' AND per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures)
AND exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
ORDER BY 3 DESC, 2 DESC;
