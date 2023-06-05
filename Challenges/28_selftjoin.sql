-- Self-Join
-- Encontrar todos los pares de películas que tienen la misma duración
SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2 ON 
f1.film_id != f2.film_id
AND f1.length = f2.length;

-- Se referenciua a sí misma para obtener datos de la misma tabla y compararse.