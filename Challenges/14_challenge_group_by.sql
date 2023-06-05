-- Challenge GROUP BY
-- 1. ¿Cuántos pagos maneja cada miembro del personal y quién recibe el bono?
SELECT staff_id, COUNT (amount) FROM payment
GROUP BY staff_id 
ORDER BY COUNT (amount) ASC;

-- 2. ¿Cuál es el costo promedio de remplazo por empleado? 
SELECT DISTINCT rating, ROUND (AVG (replacement_cost), 2) FROM film
GROUP BY rating;

-- 3. ¿Cuáles son los 5 id de consumidores según el gasto total?
SELECT DISTINCT customer_id, SUM (amount) FROM payment
GROUP BY customer_id
ORDER BY SUM (amount) DESC
LIMIT 5;