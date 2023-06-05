-- General Challenge 1
-- 1. ¿Cuántas transacciones fueron mayores a $5.00?
SELECT COUNT (*) FROM payment
WHERE amount > 5;

-- 2. ¿Cuántos actores tienen un nombre que comience con la letra P?
SELECT COUNT (*) FROM actor
WHERE first_name LIKE 'P%';

-- 3. ¿Cuántos distritos únicos son clientes?
SELECT COUNT (DISTINCT district) FROM address;

-- 4. Recuperar la lista de nombres de los distritos únicos de la pregunta anterior
SELECT DISTINCT district FROM address;

-- 5. ¿Cúantas peliculas tienen clasificación R y un costo de remplazo entre $5 y $15?
SELECT COUNT (*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

-- 6. ¿Cuántas películas tienen la palabra Truman en algún lugar del titulo?
SELECT COUNT (*) FROM film
WHERE title LIKE '%Truman%';