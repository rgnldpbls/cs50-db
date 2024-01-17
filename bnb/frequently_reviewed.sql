CREATE VIEW frequently_reviewed AS
SELECT l.id, property_type, host_name, COUNT(listing_id)
FROM listings l JOIN reviews r ON l.id = r.listing_id
GROUP BY l.id
ORDER BY 4 DESC, property_type, host_name
LIMIT 100;
