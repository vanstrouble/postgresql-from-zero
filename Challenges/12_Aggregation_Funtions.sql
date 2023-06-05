-- Agregar funciones
SELECT MIN(replacement_cost) FROM film; -- Mímimo
SELECT MAX(replacement_cost) FROM film; -- Máximo

SELECT MAX (replacement_cost), MIN (replacement_cost) 
FROM film; -- Combinaciones de ambos

SELECT COUNT (*) FROM film; -- Conteo de filas

SELECT AVG (replacement_cost) FROM film; -- Calcular el promedio

SELECT ROUND (AVG (replacement_cost)) FROM film; -- Redondear el valor a un número entero

SELECT ROUND (AVG (replacement_cost),2) FROM film; -- MOstrar los decimales que queremos

SELECT SUM (replacement_cost) FROM film; -- Suma de cantidades