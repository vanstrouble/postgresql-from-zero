-- Challenge JOIN
-- 1. Consultar los correos electrónicos de los clientes que viven en california
SELECT district, email FROM customer
LEFT JOIN address ON customer.address_id = address.address_id
WHERE district IN ('California');

-- Solución alternativa
SELECT district, email FROM address
INNER JOIN customer ON 
address.address_id = customer.address_id
WHERE district = 'California';

-- 2. Obtener la lista de las peliculas en las que aparece "Nick Wahlberg"
SELECT title, first_name, last_name FROM film_actor 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';