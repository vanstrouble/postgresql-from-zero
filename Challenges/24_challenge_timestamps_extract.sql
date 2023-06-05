-- Challenge Timestamps and Extract
-- 1. ¿Durante qué meses ocurren los pagos?
--	  Formatear la respuesta para devolver el nombre completo del mes
SELECT DISTINCT (TO_CHAR (payment_date, 'MONTH')) AS month_expect FROM payment;

-- 2. ¿Cuántos pagos se hicieron en lunes?
SELECT COUNT (*) FROM payment
WHERE EXTRACT (dow FROM payment_date) = 1;

-- Solución alternativa
SELECT COUNT(amount), TO_CHAR(payment_date, 'DAY')
FROM payment
WHERE TO_CHAR(payment_date, 'DAY') LIKE '%MONDAY%'
GROUP BY TO_CHAR(payment_date, 'DAY')