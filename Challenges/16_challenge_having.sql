-- Challenge HAVING 
-- 1. Consultar los clientes que tengan 40 o más transacciones
SELECT customer_id, COUNT (amount) FROM payment
GROUP BY customer_id
HAVING COUNT (amount) >= 40;

-- 2. Consultar los clientes que han gastado más de $100, pero solo las 
-- transacciones de pago que ocurrieron con el personal staff_id miembro 2
SELECT customer_id, SUM (amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM (amount) > 100;