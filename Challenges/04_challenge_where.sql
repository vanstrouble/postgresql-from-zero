-- WHERE
SELECT * FROM customer
WHERE first_name = 'Jared';

SELECT COUNT (*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT COUNT (*) FROM film
WHERE rating = 'R' OR rating = 'PG-13';

SELECT COUNT (*) FROM film
WHERE rating != 'R';

-- Challenge WHERE
-- 1. ¿Cuál es el email del cliente con el nombre Nancy Thomas?
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

-- 2. Consultar la descripción de la película "Outlaw Hanky"
SELECT description FROM film
WHERE title = 'Outlaw Hanky';

-- 3. Conseguir el número de teléfono del cliente con la dirección '259 Ipoh Drive'
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';