/*
FUNCIONES DE FECHA Y DE TIEMPO/HORA
Son las funciones que nos van a permitir trabajar con fechas y tiempos. 
*/

-- CURRENT_DATE / CURDATE -> Devolver la fecha actual
SELECT CURDATE(); 

-- CURRENT_TIME / CURTIME -> Devolver la hora actual
SELECT CURTIME();

-- NOW -> Fecha y hora actuales
SELECT NOW(); 

-- DATE -> Devolver una fecha dado un parametro de entrada de tipo string
SELECT DATE('2023-11-01');
-- DATE -> Devolver una fecha dado un parametro de entrada de tipo string
SELECT DATE('2023-11-01 10:39:00');

-- ADDATE -> Añade un intervalo de fecha/hora a otra fecha
SELECT adddate('2023-04-01', interval 31 day);
SELECT adddate('2023-04-01', interval 1 year);
SELECT adddate('2023-04-01', interval 3 month);

-- ADDTIME -> Añade un intervalo de hora a una fecha o a una hora
SELECT addtime(NOW(), '21:40:00');
SELECT addtime(CURTIME(), '21:40:00');

-- DAY -> día del mes MONTH -> MES YEAR -> AÑO
SELECT DAY(NOW());
SELECT MONTH(NOW());
SELECT YEAR(NOW());

-- Nombre día y mes
SELECT DAYNAME(NOW());
SELECT MONTHNAME(NOW());

-- Semana, minuto y hora.
SELECT WEEK(NOW());
SELECT MINUTE(NOW());
SELECT HOUR(NOW());

-- DATEDIFF -> diferencia fechas
SELECT DATEDIFF("2023-12-31", now());
SELECT DATEDIFF("2024-12-31", "2020-01-04")/365;

-- DATE_FORMAT
SELECT DATE_FORMAT(NOW(), "%d / %m / %y");
SELECT DATE_FORMAT(NOW(), "%D / %M / %Y");

-- TIME_FORMAT
SELECT TIME_FORMAT(CURTIME(), "%h : %i : %s - %p");





