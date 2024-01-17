SELECT s.name, per_pupil_expenditure, graduated
FROM districts d JOIN expenditures e ON d.id = e.district_id JOIN schools s ON d.id = s.district_id
JOIN graduation_rates g ON s.id = g.school_id
ORDER BY 2 DESC, s.name;

