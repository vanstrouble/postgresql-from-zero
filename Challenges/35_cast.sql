-- CAST 
-- Se suelen usar este tipo de casteos dependiendo del programa que estemos utilizando

SELECT CAST ('5' AS INTEGER) AS new_int;

SELECT '5' :: INTEGER AS new_int;

-------------------------------------------------

SELECT * FROM rental;

SELECT CHAR_LENGTH (CAST (inventory_id AS VARCHAR)) FROM rental;

