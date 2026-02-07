-- Business Rule: Delay Status Classification
SELECT
  *,
  CASE
    WHEN delay_minutes <= -5 THEN 'Early'
    WHEN delay_minutes BETWEEN -5 AND 5 THEN 'On Time'
    ELSE 'Late'
  END AS delay_status
FROM flights;
