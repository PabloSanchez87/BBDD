/*
FUNCIONES TIPO STRING
Estas funciones nos permieten trabajar con cadenas de caracteres

Documentación
https://dev.mysql.com/doc/refman/8.4/en/string-functions.html

Funcion      			Descripcion
UPPER					Convierte un string a mayúsuclas
LOWER 					Convierte un string a minúsculas
LENGTH 					Devuelve la longitud de una cadena en bytes
CONCAT 					Nos permite unir cadenas de caracteres
LTRIM 					Eliminar los espacios en blanco a la izquierda (al principio)
RTRIM					Elimina los espacios en blanco a la derecha (al final)
LOCATE 					Devuelve la posicion de una cadena dentro de otra cadena
SUBSTR 					Extraer un string de otro string
REPEAT 					Repite una cadena de caracteres un numero indicado de veces
*/

-- UPPER Y LOWER

SELECT UPPER(NAME) AS NOMBRE, LOWER(CONTINENT) AS CONTINENTE, REGION FROM WORLD.COUNTRY ;

-- LENGTH
SELECT UPPER(NAME) AS NOMBRE, LOWER(CONTINENT) AS CONTINENTE, length(REGION) as "longitud en bytes region" FROM WORLD.COUNTRY ;

-- CONCAT 
SELECT ACTOR_ID, CONCAT(FIRST_NAME, LAST_NAME) AS 'NOMBRE COMPLETO' FROM SAKILA.ACTOR;
SELECT ACTOR_ID, CONCAT(FIRST_NAME,'--',LAST_NAME) AS 'NOMBRE COMPLETO' FROM SAKILA.ACTOR;
SELECT ACTOR_ID, LOWER(CONCAT(FIRST_NAME, '--', LAST_NAME)) AS 'NOMBRE COMPLETO' FROM SAKILA.ACTOR;

-- RTRIM Y LTRIM - LENGTH
SELECT "				CONQUER BLOCKS";

SELECT LTRIM("      CONQUER BLOCKS                             ");
SELECT RTRIM("CONQUER BLOCKS                                         ");

SELECT LENGTH("      CONQUER BLOCKS                             ");
SELECT LENGTH(RTRIM(LTRIM("      CONQUER BLOCKS                             ")));

-- LOCATE 
SELECT LOCATE("BLOCKS", "CONQUER BLOCKS");
SELECT NAME FROM WORLD.COUNTRY WHERE LOCATE('KONG', NAME) != 0;

-- SUBSTR
SELECT NAME, SUBSTR(name,1, 3) FROM WORLD.COUNTRY;
SELECT NAME, UPPER(SUBSTR(name, length(name)-2, length(name))) FROM WORLD.COUNTRY;

-- REPEAT
SELECT repeat("HOLA ", 7);

