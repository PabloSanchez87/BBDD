/*
CLÁUSULA WHERE
Operadores relacionales;
	OPERADOR	NOMBRE
    -------------------
	   > 		Mayor
       <		Menor
       =		Igual
	 != <>		Distinto de
       >=		Mayor o igual
       <= 		MEnor o igual
*/

USE world;
SELECT * FROM world.country LIMIT 10;

-- Cláusula WHERE nos ayuda a filtrar nuestras consultas.
SELECT * FROM world.country WHERE Continent = "Asia";
SELECT * FROM world.country WHERE IndepYear > 1919;

-- Podemos comparar también caracteres.
SELECT 'a' > "b";
SELECT 'b' > "a";
SELECT * FROM world.country WHERE Name > 'y';
SELECT * FROM world.country WHERE Name > 'za';

-- Debido a estas características no es CaseSensitive, pero en otras BBDD no se trataría así.
SELECT @@character_set_database, @@collation_database;
SELECT * FROM world.country WHERE Continent = "Asia";
SELECT * FROM world.country WHERE Continent = "ASIA";

-- De esta forma, sería CaseSensitive. 
-- Se debe tener en cuenta como se hace la consulta para que el resultado sea el esperado.
SELECT * FROM world.country WHERE BINARY Continent = "Asia";
SELECT * FROM world.country WHERE BINARY Continent = "ASIA";
-- Los datos pueden tener errores, como espacios al principio al final o al principio que te pueden entorpecer las búsquedas.
SELECT * FROM world.country WHERE BINARY Continent = "Asia ";

/*
Tipos de datos en MySQL
1. Tipos de Cadena
2. Tipos Numéricos
3. Tipos de Fecha y Hora
4. Tipos Espaciales
5. JSON
*/

/* Ejericicios
1. Descargar la base de datos ‘sakila’ e instalarla en MySQL Workbench.
2. Seleccionar los campos ‘address’ y ‘district’ de la tabla ‘address’ donde el
distrito sea Texas.
3. Seleccionar todas las columnas de la tabla ‘payment’ cuyo campo ‘amount’
sea mayor que 11.
4. Visualizar todos los actores de la tabla ‘actor’ cuyo ‘first_name’ sea Penelope.
Probar varias formas de escribir el nombre para comprobar si obtenemos
resultados diferentes.
5. Repite el proceso anterior utilizando BINARY.
6. Visualizar las columnas ‘first_name’ y ‘last_name’ de la tabla ‘customer’ de
aquellos clientes que estén inactivos (En otras palabras, que el campo ‘active’
sea igual a 0)
7. Probar la consulta anterior cambiando el 0 por False. ¿Funciona?
8. Piensa qué resultado deberían dar las siguientes querys:
select first_name,last_name,active from customer where
active;
select first_name,last_name,active from customer where
!active;
*/

-- 1. Descargar la base de datos ‘sakila’ e instalarla en MySQL Workbench.
USE sakila;
-- 2. Seleccionar los campos ‘address’ y ‘district’ de la tabla ‘address’ donde el distrito sea Texas.
Select address, district 
	from sakila.address 
		where district="Texas";
-- 3. Seleccionar todas las columnas de la tabla ‘payment’ cuyo campo ‘amount’ sea mayor que 11.
Select * from sakila.payment where amount > 11;
-- 4. Visualizar todos los actores de la tabla ‘actor’ cuyo ‘first_name’ sea Penelope.
Select * from sakila.actor where first_name = "Penelope";
	-- Probar varias formas de escribir el nombre para comprobar si obtenemos resultados diferentes.
	Select * from sakila.actor where first_name = "PeneLOPe";
	Select * from sakila.actor where first_name = "penelope"; 
-- 5. Repite el proceso anterior utilizando BINARY.
Select * from sakila.actor where binary first_name = "Penelope";
Select * from sakila.actor where binary first_name = "PeneLOPe";
Select * from sakila.actor where binary first_name = "penelope";
Select * from sakila.actor where binary first_name = "PENELOPE";
-- 6. Visualizar las columnas ‘first_name’ y ‘last_name’ de la tabla ‘customer’ de
	-- aquellos clientes que estén inactivos (En otras palabras, que el campo ‘active’ sea igual a 0)
Select * from sakila.customer where active=0;
-- 7. Probar la consulta anterior cambiando el 0 por False. ¿Funciona?
Select * from sakila.customer where active=false;
-- 8. Piensa qué resultado deberían dar las siguientes querys:
select first_name,last_name,active from sakila.customer 
	where active;
    -- En esta primera query, el resultado deberían ser todos los clientes de la tabla customer con active = 1
select first_name,last_name,active from sakila.customer 
	where !active;

/*
!active --> FALSE
 active --> TRUE
*/



