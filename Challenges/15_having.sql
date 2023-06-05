-- HAVING
SELECT * FROM payment;

SELECT customer_id, SUM (amount) FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM (amount) FROM payment
WHERE customer_id NOT IN (184,87,477)
GROUP BY customer_id;

-- Todas las sumas son mayores de 100
SELECT customer_id, SUM (amount) FROM payment
GROUP BY customer_id
HAVING SUM (amount) > 100;

-- Recuento total de clientes por tienda
SELECT store_id, COUNT (customer_id) FROM customer
GROUP BY store_id;

-- Recuento total de clientes por tienda mayor a 300
SELECT store_id, COUNT (customer_id) FROM customer
GROUP BY store_id
HAVING COUNT (*) > 300;