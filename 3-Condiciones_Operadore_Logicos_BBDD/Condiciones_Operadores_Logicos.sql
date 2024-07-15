/* 
	CONDICIONES Y OPERADORES LÓGICOS
			AND | OR | NOT
            
	CONDICION1.       OPERADOR.       CONDICION2        RESULTADO
    Verdadera          	AND             Verdadera		Verdadero
    Verdadera     		AND 			Falsa			Falso
    Falsa 				AND				Verdadera 		Falso
    Falsa 				AND 			Falsa			Falso
    
    
	CONDICION1.       OPERADOR.       CONDICION2        RESULTADO
	Verdadera 			OR 				Verdadera		Verdadero
	Verdadera 			OR 				Falsa			Verdadero
	Falsa				OR 				Verdadera		Verdadero
	Falsa				OR 				Falsa			Falso


    ** CONSEJO ** 
    Utilizar paréntisis siempre con los ooperadores lógicos y las condiciones compuestas
*/
SELECT * FROM world.country LIMIT 100;

-- Países con una poblacion de más de 1.000.000 de habitantes y cuya esperanza de vida supere los 75 años
SELECT Name, Continent, Region, Population, LifeExpectancy FROM world.country 
	WHERE (Population>1000000 AND LifeExpectancy >= 75);

SELECT Name, Continent, Region, Population, LifeExpectancy FROM world.country 
	WHERE (Population>1000000);

SELECT Name, Continent, Region, Population, LifeExpectancy FROM world.country 
	WHERE (LifeExpectancy >= 75);
    
-- Países con un área mayor a 30000 y con una poblacion de mas de 5.000.000
SELECT Name, Continent, Region, Population, SurfaceArea FROM world.country 
	WHERE (SurfaceArea > 30000 OR Population > 50000000);

-- Países con una esperanza de vida mayor a 80 años 
SELECT Name, Continent, Region, LifeExpectancy FROM world.country 
	WHERE (LifeExpectancy > 80);
    
-- Países que no sean del contiente asiático
SELECT Name, Continent, Region, LifeExpectancy FROM world.country 
	WHERE NOT Continent = 'Asia';

-- Paises que no pertencezcan al continente asiatico y tampoco al africano
SELECT Name, Continent, Region, LifeExpectancy FROM world.country 
	WHERE NOT Continent = 'Asia' AND NOT Continent='Africa' ;

/* EJERCICIOS
1. En la tabla country de la bases de datos world, extraer los siguientes datos:
a. Países cuyo continente es Asia y la poblacion supera los 20.000.000
b. Países que pertenecen a Asia o a África
c. Países que empiecen por B y que pertenezcan a África
d. Países que pertenezcan a Europa y cuya expectativa de vida esté entre 75 y
85 años
e. Países cuyo gobierno sea República o Monarquía
f. Países de África que se independizaron despué de los 50 y cuyo gobierno
sea república
2. En la base de datos sakila, buscar dónde se encuentran (en qué tabla) y extraer los
siguientes datos:
a. Todos los actores cuyo nombre no es ‘Tom’ o ‘John’
b. Películas que no están en inglés y que tienen una clasificación ‘PG’
c. Películas que son clasificadas como ‘PG’ o ‘G’
d. Alquileres que ocurrieron antes de ‘2005-05-15’ o después de ‘2006-01-01’
*/

-- 1. En la tabla country de la bases de datos world, extraer los siguientes datos:
	-- a. Países cuyo continente es Asia y la poblacion supera los 20.000.000
    SELECT * FROM world.country 
		WHERE Continent = 'Asia' AND Population >=20000000;
    SELECT Name, Continent, Population FROM world.country 
		WHERE Continent ='Asia' and Population >=20000000;
	-- b. Países que pertenecen a Asia o a África
    SELECT Name, Continent FROM world.country 
		WHERE Continent = 'Asia' OR Continent = 'Africa';
    SELECT Name, Continent FROM world.country 
		WHERE Continent IN ('Asia', 'Africa');
	-- c. Países que empiecen por B y que pertenezcan a África
    SELECT Name, Continent FROM world.country 
		WHERE Continent = 'Africa' AND Name LIKE 'B%';
	-- d. Países que pertenezcan a Europa y cuya expectativa de vida esté entre 75 y 85 años
    SELECT Name, Continent, LifeExpectancy FROM world.country 
		WHERE Continent = 'Europe' AND LifeExpectancy BETWEEN 75 AND 85;
	-- e. Países cuyo gobierno sea República o Monarquía
    SELECT Name, Governmentform FROM world.country LIMIT 100;
	SELECT Name, Governmentform FROM world.country 
		WHERE Governmentform Like '%Repub%' OR Governmentform Like '%Monar%';
	-- f. Países de África que se independizaron despué de los 50 y cuyo gobierno sea república
    SELECT Name, Continent, Governmentform, IndepYear FROM world.country 
		WHERE Continent = 'Africa' AND Governmentform Like '%Repub%' AND IndepYear >=1590;
        
        
-- 2. En la base de datos sakila, buscar dónde se encuentran (en qué tabla) y extraer los siguientes datos:
	-- a. Todos los actores cuyo nombre no es ‘Tom’ o ‘John’
    SELECT * FROM sakila.actor LIMIT 20;
    SELECT * FROM sakila.actor 
		WHERE NOT first_name ='Tom' OR  NOT first_name = 'John';
	SELECT * FROM sakila.actor 
		WHERE first_name NOT IN ('Tom' ,'John');
	-- b. Películas que no están en inglés y que tienen una clasificación ‘PG’
    SELECT * FROM sakila.film LIMIT 20;
    SELECT * FROM sakila.language LIMIT 20;
	SELECT * FROM sakila.film WHERE NOT Language_id = 1 AND rating ='PG';
    SELECT distinct language_id FROM sakila.film;
	-- c. Películas que son clasificadas como ‘PG’ o ‘G’
    SELECT * FROM sakila.film LIMIT 20;
    SELECT * FROM sakila.film 
		WHERE rating IN ('PG' , 'G');
	-- d. Alquileres que ocurrieron antes de ‘2005-05-15’ o después de ‘2006-01-01’
    SELECT * FROM sakila.rental LIMIT 10;
    SELECT * FROM sakila.rental 
		WHERE rental_date < '2005-05-15' or rental_date > '2006-01-01';

    
    