-- FUNCIONES DE CONVERSION

SELECT CONVERT(1000, CHAR); 
SELECT CONVERT(69.02, DECIMAL);
SELECT CONVERT ("2023-01-01", DATE);

SELECT STR_TO_DATE("01-12-2023", "%d-%m-%Y");

SELECT CAST(100 AS CHAR);
SELECT CAST("20:12:00" AS TIME);


-- FUNCIONES PARA TRABAJAR CON NULOS
-- IFNULL(expresion, valor si es nulo)
SELECT name, Continent, ifnull(IndepYear, 0) 
FROM world.country; 

SELECT name, Continent, ifnull(IndepYear, "no hay!")
FROM world.country; 
