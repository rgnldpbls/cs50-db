CREATE VIEW june_vacancies AS
SELECT l.id, property_type, host_name, COUNT(date)
FROM listings l JOIN availabilities a ON l.id = a.listing_id
WHERE date LIKE "2023-06-%" AND available = "TRUE"
GROUP BY l.id;

