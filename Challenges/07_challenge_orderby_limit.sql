-- Challenge ORDER BY
-- 1. Obtener los primeros 10 ID de clientes que crearon su método de pago
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

-- 2. Consultar los 5 titulos más cortos de películas
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

-- 3. Peliculas que puede ver un cliente con un tiempo limitado de 50 min. 
SELECT COUNT (length) FROM film -- Podría contar cualquier columna
WHERE length <= 50;