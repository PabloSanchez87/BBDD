/*
Ejercicios sobre funciones fecha y hora
1. Visualizar la fecha y hora actual, con 2 funciones diferentes
2. Visualizar la fecha y hora con una sola función.
3. Añade 25 minutos a la hora actual.
4. Añade 24 horas a la fecha actual.
5. Vamos ahora a usar la tabla “rental”.
	a. Visualizar rental_date, pero solo la parte de la fecha, quitando la hora
	b. Hacer la misma operación pero visualizando el nombre del mes, pero
		solo para Enero y Mayo de 2005
	c. Visualizar el nombre del mes, pero traducido al español, usando CASE.
	d. Visualizar los alquileres que se hayan hecho los sábados y domingos
		del mes de mayo de 2005
	e. Averiguar cuantos días llevas viviendo 
    f. Si la devolución de una película, tiene que hacerse en 48 horas, 
		calcula cual sería la fecha de devolución prevista de los alquileres
	g. Poner el siguiente formato a la fecha y hora actual. Esto es un ejemplo,
		debe salir la fecha real 
*/

-- 1. Visualizar la fecha y hora actual, con 2 funciones diferentes
	SELECT CURDATE(), CURTIME();

-- 2. Visualizar la fecha y hora con una sola función.
	SELECT NOW();
    
-- 3. Añade 25 minutos a la hora actual.
	SELECT CURTIME() AS 'hora actual', 
			addtime(curtime(), 25*60) as "mas 25 minutos";
            
-- 4. Añade 24 horas a la fecha actual.
	SELECT CURDATE() AS 'Fecha actual', 
			DATE_ADD(CURDATE(), INTERVAL 24 HOUR) AS '24 horas mas';
            
	SELECT now() AS 'Fecha actual', 
			DATE_ADD(now(), INTERVAL 24 HOUR) AS '24 horas mas';
            
-- 5. Vamos ahora a usar la tabla “rental”.
	-- a. Visualizar rental_date, pero solo la parte de la fecha, quitando la hora
		SELECT RENTAL_DATE, DATE(RENTAL_DATE) FROM SAKILA.RENTAL;
        
	-- b. Hacer la misma operación pero visualizando el nombre del mes, pero
	   -- solo para Enero y Mayo de 2005
       SELECT rental_date, monthname(rental_date) 
			from sakila.rental 
			WHERE monthname(rental_date) IN('May', 'January') and year(rental_date)=2005;

	-- c. Visualizar el nombre del mes, pero traducido al español, usando CASE.
		SELECT RENTAL_DATE, 
			case month(rental_date)
				when 1 then 'Enero'
				when 2 then 'Febrero'
				when 3 then 'Marzo'
				when 4 then 'Abril'
				when 5 then 'Mayo'
				when 6 then 'Junio'
				when 7 then 'Julio'
				when 8 then 'Agosto'
				when 9 then 'Septiembre'
				when 10 then 'Octubre'
				when 11 then 'Noviembre'
				when 12 then 'Diciembre'
			end as 'Mes'
		from sakila.rental;
    
	--  d. Visualizar los alquileres que se hayan hecho los sábados y domingos
		-- del mes de mayo de 2005
        SELECT rental_date, 
				monthname(rental_date) as Mes, 
                dayname(rental_date) as Día, 
                year(rental_date) as Año
		FROM SAKILA.RENTAL 
				WHERE month(rental_date)=5 
						AND dayname(rental_date) 
                        IN ('saturday','sunday') 
                        and year(rental_date)=2005;       
        
	-- e. Averiguar cuantos días llevas viviendo 
		SELECT DATEDIFF(curdate(), '1987-12-01') AS 'Días vividos';
        
    -- f. Si la devolución de una película, tiene que hacerse en 48 horas, 
		-- calcula cual sería la fecha de devolución prevista de los alquileres
        SELECT RENTAL_DATE, 
				adddate(RENTAL_DATE, INTERVAL 48 HOUR) AS 'Fecha de devolucion' 
		from sakila.rental;
        
	-- g. Poner el siguiente formato a la fecha y hora actual. Esto es un ejemplo,
		-- debe salir la fecha real 
        SELECT date_format(now(), "Fecha de factura: %W, día %d del mes de %M del año %Y") as "Fecha de Factura";
        
        
        
        