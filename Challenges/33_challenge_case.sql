-- Challenge Task CASE
-- Comparar distintos montos de películas por clasificación de película
SELECT DISTINCT rating FROM film;

SELECT 
SUM (CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS r,
SUM (CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg,
SUM (CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS pg13
FROM film;