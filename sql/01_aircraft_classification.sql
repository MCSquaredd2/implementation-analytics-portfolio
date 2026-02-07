-- Business Rule: Aircraft Size Classification
SELECT
  *,
  CASE
    WHEN total_seats >= 300 THEN 'Widebody'
    ELSE 'Narrowbody'
  END AS aircraft_size
FROM flights;
