SELECT d.name, pupils
FROM districts d JOIN expenditures e ON e.district_id = d.id;
