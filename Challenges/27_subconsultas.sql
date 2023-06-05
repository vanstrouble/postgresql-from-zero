-- SubQuery (Subconsultas)
SELECT title, rental_rate FROM film
WHERE rental_rate >
(SELECT AVG (rental_rate) FROM film);

-- Obtener los títulos de las películas que han sido rentadas entre un 
-- determinado conjunto de fechas
SELECT * FROM rental;
SELECT * FROM inventory;

SELECT film_id, title FROM film
WHERE film_id IN
(SELECT inventory.film_id FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;

-- Encontrar clientes que tengan al menos un pago cuyo monto sea superior 
-- a 11 y que realmente queramos obtener el nombre y el apellido de ellos.
SELECT first_name, last_name 
FROM customer AS c
WHERE EXISTS 
(SELECT * FROM payment as p
WHERE p.customer_id = c.customer_id 
AND amount > 11);