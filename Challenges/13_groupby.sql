-- GROUP BY
SELECT * FROM payment;

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

-- Ejemplo. Qué cliente gasta más dinero en total
SELECT customer_id, SUM (amount) FROM payment
GROUP BY customer_id
ORDER BY SUM (amount) DESC;

-- Ejemplo. Contar la cantidad de transacciones
SELECT customer_id, COUNT (amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT (amount) DESC;

-- Cantidad total gastada por personal por cliente
SELECT customer_id, staff_id, SUM (amount) FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id, staff_id;

-- Mostrar los días en que se realizaron más transacciones en dólares
SELECT DATE (payment_date), SUM (amount) FROM payment
GROUP BY DATE (payment_date)
ORDER BY SUM (amount) DESC;

