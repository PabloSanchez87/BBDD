-- FUNCIONES NUMERICAS

-- Documentación
-- https://dev.mysql.com/doc/refman/8.4/en/numeric-functions.html

/* Nos permiten hacer operaciones y trabajar con números

FUNCION				DESCRIPCION
ABS					Devuelve el valor absoluto de un número
CEIL, CEILING 		Devuelve el valor entero mas cercano que sea superior a un numero
FLOOR				Devuelve el valor entero mas cercano que sea inferior a un numero
DIV					Division entera
MOD (%)				Devuelve el resto de una división
PI					Devuelve el valor de PI
POW O POWER			Devuelve un numero elevado a la potencia de otro
SQRT()				Devuelve la raíz cuadrada de un numero
RAND 				Devuelve un numero aleatorio entre 0 y 1
ROUND 				Devuelve un numero N redondeado
SING 				Devuelve el signo de un numero
TRUNCATE 			Trunca un numero a partir de N decimales
*/

-- ABS 
SELECT ABS(70);
SELECT ABS(-70);

-- CEIL
SELECT CEIL(10.01);
SELECT CEIL(-10.01);

-- FLOOR 
SELECT FLOOR(10.5);
SELECT FLOOR(10.9);
SELECT FLOOR(-10.5);

-- DIV y MOD
SELECT 8 DIV 2; -- division entera
SELECT MOD(8,2); 

SELECT 9 DIV 2; -- division entera
SELECT MOD(9,2);

SELECT NAME, INDEPYEAR FROM WORLD.COUNTRY WHERE MOD(INDEPYEAR, 2) = 0;

-- PI
SELECT PI();

-- POW / POWER
SELECT POW(4,2);

-- SQRT
SELECT SQRT(4);

-- RAND
SELECT RAND();

SELECT RAND()*1000;

-- 3 y 5 sería una semilla de partida.
-- Con esa semilla siempre da el mismo número aleatorio.
SELECT RAND(3);
SELECT RAND(5);

-- SIGN
-- Devuelve un 1 si como parámetro metemos un numero positivo
-- Devuelve un -1 si como parámetro metemos un numero negativo
-- Devuelve un 0 si como parámetro metemos un cero, porque no tiene signo

SELECT SIGN(20);
SELECT SIGN(-20);
SELECT SIGN(0);

-- ROUND, TRUNCATE
SELECT ROUND(10.6);
SELECT ROUND(10.1);

SELECT ROUND(10.44, 1);
SELECT ROUND(10.646, 2);

SELECT TRUNCATE(10.51, 1); 
SELECT TRUNCATE(10.59, 1); 

SELECT TRUNCATE(10.5156, 2); 