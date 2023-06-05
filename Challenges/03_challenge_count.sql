-- COUNT
-- La función "SELECT COUNT (name) " debe de llevar parentesis porque es una función que actua sobre algo.
-- SELECT COUNT (name) FROM table. -- Ejemplo
SELECT * FROM payment;
SELECT COUNT (*) FROM payment; -- Cuántas filas contiene la tabla
SELECT COUNT (amount) FROM payment; -- Cuántas filas contiene cierta columna

SELECT amount FROM payment; -- Todos los montos que se hay pagado
SELECT DISTINCT amount FROM payment; -- Montos de pago únicos
SELECT COUNT (DISTINCT amount) FROM payment; -- Cuántos montos de pago hay