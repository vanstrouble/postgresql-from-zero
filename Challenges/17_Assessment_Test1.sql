-- Assessment Test 1
-- 1. Regresa los ID de los consumidores que han gastado al menos $110
-- con el miembro del staff con el ID 2
SELECT customer_id, SUM (amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM (amount) >= 110;

-- 2. ¿Cuántas películas comienzan con la letra J?
SELECT COUNT (title) FROM film
WHERE title LIKE 'J%';

-- 3. ¿Qué cliente tiene el ID más alto cuyo nombre comienza con 'E' y tiene
-- de una ID de dirección inferior a 500? 
SELECT first_name, last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;