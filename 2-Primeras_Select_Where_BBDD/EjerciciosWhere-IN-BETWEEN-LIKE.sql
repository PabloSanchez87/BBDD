/* Ejercicios IN, LIKE, BETWEEN
1. Ejercicios con BETWEEN
a. Extrae el nombre y la duración de las películas que duran entre 120 y 130
horas. Utiliza la tabla film
b. Extrae de la tabla rent, el ‘rental_id’ y el ‘rental_date’ de los alquileres de
febrero de 2006
c. Extrae de la tabla actor el ‘first_name’ de los actores cuyo primer nombre
comience entre B y C
2. Ejercicios con LIKE
a. Averigua los actores cuyo nombre comience en B y termine en A
b. Extrae los apellidos de los clientes cuyo apellido empiece por MA
c. Extrae los nombres y apellidos de los clientes cuyos apellidos tengan TH en
cualquier parte
d. Extrae los apellidos que tengan una A como segunda letra y una E como
cuarta letra
3. Ejercicios con IN
a. Extrae el nombre y los apellidos de los actores cuyo nombre sea: ‘sara’,
‘fred’, ‘ed’ y ‘helen’
b. Extrae el ‘title’ y el ‘rental_date’ de la tabla film, cuyo ‘rental_date’ sea 2.99 o
4.99
c. Extrae el título y las características especiales de las películas que sean
‘Deleted scenes’ o ‘Comedy’
d. Extrae el nombre de la ciudad cuyo país es el 87 o el 60
*/

-- 1. Ejercicios con BETWEEN
	-- a. Extrae el nombre y la duración de las películas que duran entre 120 y 130 horas. Utiliza la tabla film
    SELECT * FROM sakila.film LIMIT 20;
    SELECT title, length FROM sakila.film WHERE length BETWEEN 120 AND 130;
	-- b. Extrae de la tabla rent, el ‘rental_id’ y el ‘rental_date’ de los alquileres de febrero de 2006
	SELECT * FROM sakila.rental LIMIT 20;
    SELECT rental_id, rental_date FROM sakila.rental WHERE rental_date BETWEEN '2006-02-01' AND '2006-02-28';
	-- c. Extrae de la tabla actor el ‘first_name’ de los actores cuyo primer nombrecomience entre B y C
    SELECT * FROM sakila.actor LIMIT 20;
    SELECT first_name FROM sakila.actor WHERE first_name BETWEEN 'B' AND 'C';
    -- nota: en la comparación de caracteres no es exactamente igual que los número
    -- Sigue una ordenación lexicográfica.
    SELECT first_name FROM sakila.actor WHERE first_name BETWEEN 'B' AND 'D';
    
-- 2. Ejercicios con LIKE
	-- a. Averigua los actores cuyo nombre comience en B y termine en A
    SELECT * FROM sakila.actor LIMIT 20;
    SELECT * FROM sakila.actor WHERE first_name LIKE 'B%A';
	-- b. Extrae los apellidos de los clientes cuyo apellido empiece por MA
    SELECT * FROM sakila.customer LIMIT 20;
    SELECT last_name FROM sakila.customer WHERE last_name LIKE 'ma%';
	-- c. Extrae los nombres y apellidos de los clientes cuyos apellidos tengan TH en cualquier parte
    SELECT * FROM sakila.customer LIMIT 20;
    SELECT first_name, last_name FROM sakila.customer WHERE last_name LIKE '%th%';
	-- d. Extrae los apellidos que tengan una A como segunda letra y una E como cuarta letra
    SELECT * FROM sakila.customer LIMIT 20;
    SELECT last_name FROM sakila.customer WHERE last_name LIKE '_a_e%';
    
-- 3. Ejercicios con IN
	-- a. Extrae el nombre y los apellidos de los actores cuyo nombre sea: ‘sara’, ‘fred’, ‘ed’ y ‘helen’
    SELECT * FROM sakila.actor LIMIT 20;
    SELECT first_name, last_name FROM sakila.actor WHERE first_name IN ('sara','fred','ed', 'helen');
	-- b. Extrae el ‘title’ y el ‘rental_rate’ de la tabla film, cuyo ‘rental_rate’ sea 2.99 o 4.99
    SELECT * FROM sakila.film LIMIT 20;
    SELECT title, rental_rate FROM sakila.film WHERE rental_rate IN (2.99, 4.99);
	-- c. Extrae el título y las características especiales de las películas que sean ‘Deleted scenes’ o ‘Comedy’
    SELECT * FROM sakila.film LIMIT 20;
    SELECT title, special_features FROM sakila.film WHERE special_features IN ('Deleted scenes', 'Comedy');
	-- d. Extrae el nombre de la ciudad cuyo país es el 87 o el 60
    SELECT * FROM sakila.CITY LIMIT 20;
    SELECT city, country_id FROM sakila.city WHERE country_id IN(87, 60);
    
    
    
    
    