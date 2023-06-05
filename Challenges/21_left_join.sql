-- Left Outer Join
SELECT * FROM film;
SELECT * FROM inventory;

-- Mostrar las peliculas que no tenemos en inventario
SELECT film.film_id, film.title, inventory_id, store_id
FROM film
LEFT JOIN inventory ON 
inventory.film_id = film.film_id
WHERE inventory.film_id IS null;