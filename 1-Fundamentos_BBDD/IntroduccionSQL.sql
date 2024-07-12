-- Crear una base de datos.
-- Crear una o varias tablas.
-- Insertar filas.
-- Realizar operaciones SELECT, UPDATE, DELETE, INSERT...
CREATE DATABASE CONQUER;
SHOW databases;
USE world;

-- JUEGO DE CARACTERES  --
/*COLLATIONS - Forma que tiene el servidor de comparar los caracteres, muy importante para las ordenaciones.
				Se le otorga un valor numérico a cada caracter.*/
SHOW CHARACTER SET;
SHOW COLLATION WHERE CHARSET LIKE 'utf8mb4';
SHOW VARIABLES LIKE 'CHAR%';
SHOW VARIABLES LIKE 'COLL%';

-- Ejemplos sencillos consultas SQL --
SELECT * FROM CITY LIMIT 10;
SELECT * FROM COUNTRY LIMIT 10;
SELECT * FROM COUNTRYLANGUAGE LIMIT 10;