
USE world;
SHOW Tables;
-- SINTAXIS: SELECT COLUMNA/S FROM TABLA;
-- * Significa todas las columnas. 
-- LIMIT ##; para limitar la búsqueda.
SELECT * FROM city LIMIT 50; 
-- SELECT COLUMNA1, COLUMNA2, ... COLUMNAN FROM TABLA; (SELECCIONAMOS QUE COLUMNAS QUEREMOS VER)
SELECT CountryCode, District FROM city;
-- EXPRESIONES (ESTO EN OTRO TIPO DE BBDD NO SE PODRÍA HACER, POR EJEMPLO EN ORACLE)
SELECT 4+5;
SELECT 4+5 FROM dual;

SELECT * FROM city LIMIT 50; 
-- Cambiamos una columna y le ponemos otro nombre con un Alias.
-- AS: Para crear un alias para una columna o expresión.
SELECT Name, Population*2 AS "Double_Population" FROM city;

/*Orden predeterminado de operaciones
	- Nivel 1: *, /. %
	- Nivel 2: +, -
	*/
-- Si queremos cambiar el orden de preferencia de las operaciones aritméticas, usamos paréntesis.
SELECT 4+5*10;
SELECT (4+5)*10;
SELECT 4+10/5;
SELECT (4+10)/5;

 SELECT * FROM city LIMIT 50; 
 SELECT distinct CountryCode from City;
 SELECT * FROM countrylanguage LIMIT 50;
 SELECT DISTINCT CountryCode, Language FROM countrylanguage;
 -- DISTINCT controla los valores repetidos a la hora de mostrar los datos.
 
 -- Como acceder a datos de una base de datos en la que no estamos situados.
	-- "world.city"
 USE conquer;
SELECT NAME, ID FROM world.city;
     
/* EJERCICIO DE PRÁCTICA.
1. Entrar en la base de datos world.
2. Estudiar la estructura de la tabla country.
3. Escribir una query para recuperar todas las columnas y filas de la de la tabla.
4. Escribir una query para visualizar sólo los nombres de los países.
5. Escribir una Query para visualizar el nombre, el continente y la población de cada
país.
6. Cambiar la cabecera de cada columna de la consulta anterior traduciendo el nombre
al español.
7. Utilizando la columna IndepYear (Año de la independencia), averiguar cuántos años
lleva un país siendo independiente.
a. En esta consulta debemos visualizar: el nombre del país, el año de la
independencia y el número de años transcurridos.
b. El nombre de la columna en la que hagamos el cálculo deberá llamarse
“Años_Transcurridos”
8. Visualizar los continentes sin que aparezcan repetidos.
9. Visualizar los 5 primeros países.
*/

-- 1. Entrar en la base de datos world.
USE world;
-- 2. Estudiar la estructura de la tabla country.
SHOW TABLES;
-- 3. Escribir una query para recuperar todas las columnas y filas de la de la tabla.
SELECT * FROM country;
-- 4. Escribir una query para visualizar sólo los nombres de los países.
SELECT Name FROM country;
-- 5. Escribir una Query para visualizar el nombre, el continente y la población de cada país.
SELECT * FROM country;
SELECT Name, Continent, Population FROM country;
-- 6. Cambiar la cabecera de cada columna de la consulta anterior traduciendo el nombre al español.
SELECT Name AS Nombre, Continent AS Continente, Population AS Poblacion FROM country;
-- 7. Utilizando la columna IndepYear (Año de la independencia), averiguar cuántos años lleva un país siendo independiente.
SELECT * FROM country;
SELECT Name,  IndepYear FROM country;
	-- a. En esta consulta debemos visualizar: el nombre del país, el año de la independencia y el número de años transcurridos.
	-- b. El nombre de la columna en la que hagamos el cálculo deberá llamarse “Años_Transcurridos”
8. Visualizar los continentes sin que aparezcan repetidos.
9. Visualizar los 5 primeros países.
