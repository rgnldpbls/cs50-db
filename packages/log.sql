
-- *** The Lost Letter ***
SELECT * FROM addresses AS a JOIN packages p ON a.id = p.to_address_id WHERE address LIKE '2 F%' AND contents LIKE 'congratulatory%';
-- *** The Devious Delivery ***
SELECT * FROM packages AS p JOIN scans AS s ON p.id = s.package_id JOIN addresses AS a ON s.address_id = a.id WHERE from_address_id IS NULL;
-- *** The Forgotten Gift ***
SELECT * FROM packages AS p JOIN scans AS s ON p.id = s.package_id JOIN drivers as d ON s.driver_id = d.id WHERE to_address_id = (SELECT id FROM addresses WHERE address = '728 Maple Place') AND from_address_id = (SELECT id FROM addresses WHERE address = '109 Tileston Street');


