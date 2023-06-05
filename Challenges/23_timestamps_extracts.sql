-- Timestamps and Extracts
SHOW ALL;

SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_DATE()

SELECT * FROM payment;

-- Seleccionar los meses de pago
SELECT EXTRACT (YEAR FROM payment_date) AS myyear FROM payment;

-- Seleccionar los meses de pago
SELECT EXTRACT (MONTH FROM payment_date) AS pay_month FROM payment;

-- Seleccionar el trimestre
SELECT EXTRACT (QUARTER FROM payment_date) AS pay_month FROM payment;

-- Calcular la antiguedad de una marca de tiempo
SELECT AGE (payment_date) FROM payment;

-- Convertir un tipo de dato a tipo texto
SELECT TO_CHAR (payment_date, 'MONTH-YYYY') FROM payment;