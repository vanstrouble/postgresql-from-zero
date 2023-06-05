-- Views
-- Crear la vista
CREATE VIEW customer_info AS 
SELECT first_name, last_name, address
FROM customer INNER JOIN address
ON customer.address_id = address.address_id;

-- Visualizar la vista
SELECT * FROM customer_info;

-- Modificar la vista
CREATE OR REPLACE VIEW customer_info AS 
SELECT first_name, last_name, address, district
FROM customer INNER JOIN address
ON customer.address_id = address.address_id;

-- Eliminar la vista
DROP VIEW IF EXISTS customer_info;

-- Renombrar la vista
ALTER VIEW customer_info RENAME TO c_info;

