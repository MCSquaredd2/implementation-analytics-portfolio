-- Percentage of flights by aircraft size
SELECT
  aircraft_size,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_flights
FROM flights
GROUP BY aircraft_size;
