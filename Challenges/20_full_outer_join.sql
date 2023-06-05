-- Full Outer Joins
SELECT * FROM payment;
SELECT * FROM customer;

-- Toma todos los datos de las tablas y los une
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

-- Identificar elos clientes que nunca realizaron un pago
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

-- Clientes únicos
SELECT COUNT (DISTINCT customer_id) FROM payment;
SELECT COUNT (DISTINCT customer_id)	FROM customer;