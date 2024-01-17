SELECT english_title AS English_Title, brightness, contrast
FROM views
WHERE brightness > 0.60 AND contrast > 0.40
ORDER BY brightness, contrast;