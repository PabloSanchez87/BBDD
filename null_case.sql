/*
NULL
*/
SELECT * FROM world.country;

-- Esto es incorrecto, no se puede igualar a NULL. (es como una indeterminación)
SELECT * FROM world.country WHERE IndepYear=NULL;

-- Correcto
SELECT * FROM world.country WHERE IndepYear IS NULL;
SELECT * FROM world.country WHERE IndepYear IS NOT NULL;

/*
CASE
-- Nos permite pasar un valor y poner varias condiciones.
	CASE valor
		WHEN when_valor THEN x
        WHEN when_valor THEN y
        WHEN when_valor THEN z
		(ELSE t)
	END CASE
*/
SELECT * FROM world.country LIMIT 20;
SELECT Continent,
	CASE Continent
		WHEN 'Asia' then 'Continente Asiático'
		WHEN 'Europe' then 'Continente Europeo'
        WHEN 'South America' then 'Continente Americano'
        ELSE 'Continente desconcido'
	END AS 'Continente en español'
from world.country;

/*
CASE valor
	WHEN condition THEN comandos
	WHEN condition THEN comandos
	(ELSE comandos)
END CASE
*/
SELECT * FROM world.country LIMIT 20;
SELECT Name, region, population,
	CASE
		WHEN population > 2000000 THEN 'Grande'
		WHEN population BETWEEN 1000000 AND 2000000 THEN 'Mediano'
        WHEN population > 50000 THEN 'Pequeño'
        ELSE 'Muy pequeño'
	END AS 'Tamaño población'
FROM  world.country;
	

/*
Ejercicios con NULL y CASE
1. Extrae la dirección (address) y dirección2 (address2) donde la dirección2 sea
nula de la tabla es address
2. Extrae el rental_id, rental_date y return_date para aquellos alquileres que ya
tienen fecha de devolución de la tabla rental
3. Vamos a usar la tabla “category”. Con un case vamos a traducir alguna de las
categorías, no hace falta todas.
4. Vamos a usar la tabla payment y la columna amount según las siguientes
condiciones:
a. amount<= 0.99 'Barato'
b. amount entre 1 y 4.99 'Medio'
c. amount >= 4.99 'Caro'
d. Para cualquier otra cosa ponemos 'Otros valores
*/

-- 1. Extrae la dirección (address) y dirección2 (address2) donde la dirección2 sea nula de la tabla es address
SELECT * from sakila.address;
SELECT address, address2 from sakila.address where address2 is null;
-- esto es incorrecto
SELECT address, address2 from sakila.address where address2 = null;

-- 2. Extrae el rental_id, rental_date y return_date para aquellos alquileres que ya tienen fecha de devolución de la tabla rental
SELECT * from sakila.rental;
SELECT rental_id, rental_date, return_date from sakila.rental where return_date is not null;

-- esto es incorrecto
SELECT rental_id, rental_date, return_date from sakila.rental where return_date != null;

-- 3. Vamos a usar la tabla “category”. Con un case vamos a traducir alguna de las categorías, no hace falta todas.
Select distinct name from sakila.category;

Select name , 
	case name
		when 'Action' then 'Acción'
        when 'Children' then 'Infantil'
        when 'Comedy' then 'Comedia' 
        when 'Horror' then 'Terror'
        when 'Sci-Fi' then 'Ciencia Ficción'
        else 'Otra categoria'
	end as Categoria
        FROM sakila.category;
        
-- 4. Vamos a usar la tabla payment y la columna amount según las siguientes condiciones:
	-- a. amount<= 0.99 'Barato'
	-- b. amount entre 1 y 4.99 'Medio'
	-- c. amount >= 4.99 'Caro'
	-- d. Para cualquier otra cosa ponemos 'Otros valores
Select * from sakila.payment limit 100;

SELECT rental_id, amount, 
	case 
		when amount <= 0.99 then 'Barato'
        when amount between 1 and 4.99 then 'Medio' 
        when amount >= 4.99 then 'Caro'
        else 'Otros valores'
	end as 'Precio'
    FROM sakila.payment;
