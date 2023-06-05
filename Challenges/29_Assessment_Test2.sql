-- Assessment Test 2
-- 1. Obtener la información de la tabla cd.facilities
SELECT * FROM cd.facilities;

-- 2. Mostrar una lista de facilidades y costos
SELECT name, membercost FROM cd.facilities;

-- 3. Generar una lista de instalaciones que cobran tarifa gratuita a los miembros
SELECT * FROM cd.facilities
WHERE membercost > 0;

-- 4. Generar una lista de instalaciones que cobran una tarifa a los miembros y esa 
-- tarifa es menos de 1/50 del costo de mantenimiento mensual. Devolver el nombre de 
-- la instalación, el costo del miembro y el mantenimiento mensual de las instalaciones 
-- en cuestión.
SELECT name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND (membercost < monthlymaintenance / 50.0);

-- 5. Generar una lista de todas las instalaciones con la palabra 'Tennis' en su nombre
SELECT * FROM cd.facilities
WHERE name LIKE ('%Tennis%');

-- 6. Obtener los detalles de las instalaciones con ID 1 y 5. Hacerlo sin usar el 
-- operador OR.
SELECT * FROM cd.facilities
WHERE facid IN (1,5);

-- 7. Generar una lista de los miembros que se han unido después de septiembre 2012 
-- Regresar memid, surname, firstname, y joindate de los miembros en cuestión.
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

-- 8. Generar una lista ordenada de los primeros 10 apellidos en la tabla miembros.
-- No debe contener duplicados.
SELECT DISTINCT surname FROM cd.members
ORDER BY surname LIMIT 10;

-- 9. Obtener la fecha de registro del último miembro.
SELECT joindate FROM cd.members
ORDER BY joindate DESC LIMIT 1;

-- 10. Listar las instalaciones que tienen un costo para los huéspedes de 10 o más.
SELECT COUNT (guestcost) FROM cd.facilities
WHERE guestcost > 10;

-- 11. Generar una lista del número total de espacios reservados por instalación en el 
-- mes de septiembre 2012. Producir una tabla de salida que consista en la identificación 
-- de la instalación y los espacios, ordenados por el número de espacios.
SELECT facid, SUM (slots) AS "Total Slots" FROM cd.bookings
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid ORDER BY SUM (slots);

-- 12. Producir una lista de instalaciones con más de 1000 espacios reservados. 
-- Genere una tabla de salida que consta de la identificación de la instalación y el total 
-- de espacios, ordenados por la identificación de instalación. 
SELECT facid, SUM (slots) AS "Total Slots" FROM cd.bookings
GROUP BY facid HAVING SUM (slots) > 1000 ORDER BY facid;

-- 13. Producir una lista de las horas de inicio de las reservas de canchas de tenis para 
-- la fecha '2012-09-21'. Devuelve una lista de emparejamientos de hora de inicio y nombre 
-- de instalación, ordenados por hora. 
SELECT cd.bookings.starttime AS "Start", cd.facilities.name AS "Name" 
FROM cd.facilities INNER JOIN cd.bookings ON cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.facid IN (0,1) 
AND cd.bookings.starttime >= '2012-09-21' AND cd.bookings.starttime < '2012-09-22' 
ORDER BY cd.bookings.starttime;

-- 14. Producir una lista de inicio de las horas de inicio de las reservas de los miembros 
-- llamados 'David Farrell'.
SELECT cd.bookings.starttime 
FROM cd.bookings INNER JOIN cd.members ON cd.members.memid = cd.bookings.memid 
WHERE cd.members.firstname = 'David' AND cd.members.surname = 'Farrell';