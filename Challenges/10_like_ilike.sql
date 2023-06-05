-- LIKE and ILIKE
-- ILIKE nos permite incluir sentencias sin distincion de mayúsculas o minúsculas
SELECT * FROM customer
WHERE first_name LIKE 'J%';

SELECT COUNT (*) FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name LIKE '%er%';

SELECT * FROM customer
WHERE first_name NOT LIKE '_her%';

SELECT * FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name;

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;