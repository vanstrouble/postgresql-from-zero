-- Funciones String y operadores
-- Obtener la longitud de un nombre
SELECT LENGTH (first_name) FROM customer;

-- Concatenar el nombre de los clientes de manera correcta
SELECT first_name || ' ' || last_name AS full_name
FROM customer;

-- Concatenar el nombre pero usando mayúsculas
SELECT upper(first_name) || ' ' || upper(last_name) AS full_name
FROM customer;

-- Crear emails perzonalizados con el nombre del consumidor
SELECT LOWER (LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' 
AS customer_email FROM customer;

-- Para más operadores, consultar la documentación en pgAdmin