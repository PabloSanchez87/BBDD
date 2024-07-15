-- Uso tipo de fechas

SELECT * FROM  conquer.fechas;

-- Forma no recomendada.
SELECT * FROM conquer.fechas where fecha > '21-10-01';
-- año 00 -> 69 => 20##
-- año 70 -> 99 => 19##
SELECT * FROM conquer.fechas where fecha > '2021-10-01';
-- Fecha y hora
SELECT * FROM conquer.fechas WHERE fecha_hora > '2022-10-06';
SELECT * FROM conquer.fechas WHERE fecha_hora > '2022-10-06 16:30';

-- timestamp (sello_tiempo)
SELECT * FROM conquer.fechas WHERE sello_tiempo > '2022-10-06 16:30';

-- time
SELECT * FROM conquer.fechas WHERE tiempo > '16:30:00';

-- Year
SELECT * FROM conquer.fechas WHERE anio >= '2013';

/* 
BETWEEN 
LIKE
IN
*/

-- BETWEEN
SELECT * FROM conquer.fechas WHERE anio BETWEEN '2011' AND '2012';

SELECT * FROM WORLD.COUNTRY WHERE INDEPYEAR BETWEEN 1939 AND 2000;

SELECT * FROM WORLD.COUNTRY WHERE NAME BETWEEN 'a' and 'be';

SELECT * FROM conquer.fechas WHERE FECHA BETWEEN '2022-01-01' AND '2023-12-01';

-- LIKE 
/*
select * from tabla where columna like 'patron'
						  columna like 'a%'  -> Condición que empiece por a
                          columna like 'a_'  -> Condicion que empiece por a y con otro único caracter.
                          columna like '%a'  -> Condición que termine por a
                          columna like 'a_t%' -> Condición que empiece por a un caracter cualquiera, luego una t seguido de lo que sea
                          columna like '%as%' -> Condición que contenga la cadena as
*/
SELECT * FROM WORLD.COUNTRY WHERE NAME LIKE 'A_u%';

-- IN 
SELECT * FROM WORLD.COUNTRY WHERE INDEPYEAR IN (1941, 1965, 1956);
SELECT * FROM WORLD.COUNTRY WHERE CONTINENT IN ('Asia', 'Europe');