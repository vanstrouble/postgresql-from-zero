-- AS
-- Ejemplo
SELECT COUNT (amount) FROM payment; -- Normal

SELECT COUNT (amount) AS num_transactions
FROM payment;

-- Consulta sin alias, poco entendible
SELECT customer_id, SUM (amount)
FROM payment 
GROUP BY customer_id;
-- Consulta con alias, se entiende a qué nos referimos
SELECT customer_id, SUM (amount) AS total_spend -- El alias solo existirá al final de la salida de datos
FROM payment 
GROUP BY customer_id;