-- Validate delay patterns by distance
SELECT
  delay_status,
  ROUND(AVG(distance_miles), 2) AS avg_distance
FROM flights
GROUP BY delay_status;
