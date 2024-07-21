/*
Ejercicios sobre funciones para strings y sobre funciones numéricas
1. En la tabla empleados, visualizar los siguientes datos:
	a. Visualizar los nombres de los empleados que tengan más de 10 letras
	b. Visualizar el nombre y apellido1 de los empleados que tengan la misma longitud
	c. Visualizar el nombre y los apellidos en un único campo
	d. Visualizar las iniciales del nombre y los apellidos. 
		Por ejemplo: Yolanda López Guillén debe aparecer como Y.L.G
	e. Visualizar el nombre de los empleados que tengan una ‘a’ sin usar LIKE.
		Utiliza la función LOCATE.
	f. Visualiza el nombre y la última letra del nombre
	g. Visualiza el nombre y la última letra del nombre, pero sólo si esta última
		letra es una vocal
	h. Extraer del correo del empleado solo una parte del nombre. Elimina lo
		que hay desde el ‘@’ hasta el final.
2. También en la tabla empleados, visualiza los siguientes datos:
	a. Visualizar el salario y decir si es impar o par.
3. En la tabla payment:
	a. Visualiza el numero entero inferior y el posterior de la columna amount
*/

-- 1. En la tabla empleados, visualizar los siguientes datos:
 -- a. Visualizar los nombres de los empleados que tengan más de 10 letras
	SELECT FIRST_NAME, length(first_name) as 'Tamaño' FROM sakila.staff 
		WHERE length(first_name) >= 10; -- Sin resultadsos
        
	Select first_name from sakila.staff; -- Comprobamos manualmente
    
    -- Probamos con actor para comprobar que la condicion funciona
	SELECT FIRST_NAME, length(first_name) as 'Tamaño' FROM sakila.actor 
		WHERE length(first_name) >= 10;
    
 -- b. Visualizar el nombre y apellido1 de los empleados que tengan la misma longitud
	SELECT FIRST_NAME, LAST_NAME FROM sakila.staff 
		where length(first_name)=length(last_name); -- Sin resultadsos
        
	Select first_name from sakila.staff; -- Comprobamos manualmente
        
	SELECT FIRST_NAME, LAST_NAME, length(first_name), length(last_name) FROM sakila.actor 
		where length(first_name)=length(last_name);
        
 -- c. Visualizar el nombre y los apellidos en un único campo 
	SELECT concat(first_name, " ", last_name) as 'Nombre completo' FROM sakila.staff;
    
 -- d. Visualizar las iniciales del nombre y los apellidos. 
	-- Por ejemplo: Yolanda López Guillén debe aparecer como Y.L.G
    SELECT FIRST_NAME, LAST_NAME, 
		CONCAT(substr(first_name, 1,1), ".", substr(last_name, 1,1)) as Iniciales 
			FROM sakila.staff;

	SELECT FIRST_NAME, LAST_NAME, 
		CONCAT(substr(first_name, 1,1), ".", substr(last_name, 1,1)) as Iniciales
			FROM sakila.actor;
    
 -- e. Visualizar el nombre de los empleados que tengan una ‘a’ sin usar LIKE.
	-- Utiliza la función LOCATE.
    SELECT FIRST_NAME FROM sakila.staff 
		where LOCATE('a', first_name) <> 0; -- Sin resultados
        
	SELECT FIRST_NAME, locate('a', first_name) FROM sakila.actor 
		where LOCATE('a', first_name) <> 0;
    
 -- f. Visualiza el nombre y la última letra del nombre
	SELECT FIRST_NAME, 
			substr(first_name, length(first_name), length(first_name)) AS 'Ultima letra' 
				from sakila.staff; 

	SELECT FIRST_NAME, 
			substr(first_name, length(first_name), length(first_name)) AS 'Ultima letra' 
				from sakila.actor; 

 -- g. Visualiza el nombre y la última letra del nombre, pero sólo si esta última
	-- letra es una vocal
    SELECT FIRST_NAME, 
			substr(first_name, length(first_name), length(first_name)) AS 'Ultima letra' 
				from sakila.staff
					WHERE substr(first_name, length(first_name), length(first_name)) IN ('a', 'e', 'i', 'o', 'u'); 
                    
	-- Hacemos lo mismo pero solo mostramos la ultima letra si no es una vocal
	SELECT FIRST_NAME, 
			substr(first_name, length(first_name), length(first_name)) AS 'Ultima letra' 
				from sakila.staff
					WHERE substr(first_name, length(first_name), length(first_name)) NOT IN ('a', 'e', 'i', 'o', 'u'); 
    
 -- h. Extraer del correo del empleado solo una parte del nombre. Elimina lo
	-- que hay desde el ‘@’ hasta el final.
    SELECT FIRST_NAME, LAST_NAME, EMAIL, substr(email, 1, locate('@', email)-1) 
		FROM sakila.staff;
    
-- 2. También en la tabla empleados, visualiza los siguientes datos:
	Select * from sakila.customer;
	-- a. Visualizar el salario y decir si es impar o par.
    SELECT customer_id, 
			case 
				when mod(customer_id, 2) = 0 then 'Par'
				when mod(customer_id, 2) != 0 then 'Impar'
			end AS 'Par o Impar'
	FROM sakila.customer;
    
-- 3. En la tabla payment:
	-- a. Visualiza el numero entero inferior y el posterior de la columna amount
    SELECT AMOUNT, 
			FLOOR(AMOUNT) AS INFERIOR, 
            CEIL(AMOUNT) AS SUPERIOR 
	FROM sakila.payment; 

    
    
    
    