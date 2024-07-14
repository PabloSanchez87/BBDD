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





