CREATE VIEW available AS
SELECT l.id, property_type, host_name, date
FROM listings l JOIN availabilities a ON l.id = a.listing_id
WHERE available = "TRUE";
