/*
AGRUPACIONES Y FUNCIONES DE GRUPO => GROUP BY
-- FUNCIONES TIPICAS DE GRUPO
	-- SUM()
	-- COUNT()
	-- MIN()
	-- MAX()
	-- AVG() -> devuelve el valor promedio de lo que se especifique
OJO. No podemos mezclar columnas simples con columnas de grupo.
*/
use conquer;

CREATE TABLE conquerblocks (
    profesores VARCHAR(255),
    formacion VARCHAR(255),
    asignatura VARCHAR(255),
    alumnos INT
);

Insert into conquerblocks (profesores, formacion, asignatura, alumnos) values 
('Elena', 'Inteligencia Artificial', 'Python1', 50),
('Elena', 'Inteligencia Artificial', 'Python1', 100),  
('Elena', 'Full-stack', 'Python1', 100),  
('Elena', 'Full-stack', 'Python2', 100),
('Bienvenido', 'Full-stack', 'HTML', 200),
('Bienvenido', 'Full-stack', 'CSS', 200),
('Bienvenido', 'Full-stack', 'JavaScript', 70),
('Bienvenido', 'Blockchain', 'JavaScript', 70),
('Yolanda', 'Full-stack', 'SQL', 200),
('Yolanda', 'Inteligencia Artificial', 'SQL', 200),
('Yolanda', 'Blockchain', 'Solidity', 500),
('Yolanda', 'Full-stack', 'Pseudocódigo', 170);

-- Revisamos la tabla creada.
select * from CONQUERBLOCKS;


-- SELECT PROFESORES, FORMACION FROM CONQUERBLOCKS GROUP BY FORMACION;
-- ERROR. No podemos hacer esa agrupación. 
-- Pq no podemos mezclar columnas simples con columnas de grupo.

/*
-- Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause 
-- and contains nonaggregated column 'conquer.CONQUERBLOCKS.profesores' 
-- which is not functionally dependent on columns in GROUP BY clause; 
-- this is incompatible with sql_mode=only_full_group_by */

-- Realizamos una agrupación por Formación y profesores.
SELECT PROFESORES, FORMACION FROM CONQUERBLOCKS GROUP BY FORMACION, PROFESORES;

-- NUMERO DE ALUMNOS POR CADA FORMACION
SELECT FORMACION, SUM(ALUMNOS) FROM CONQUERBLOCKS GROUP BY FORMACION;

-- numero de profesores por cada formacion
SELECT FORMACION, COUNT(DISTINCT PROFESORES) AS 'NUMERO DE PROFESORES' 
FROM CONQUERBLOCKS 
	GROUP BY FORMACION;

-- FUNCIONES TIPICAS DE GRUPO
	-- SUM()
	-- COUNT()
	-- MIN()
	-- MAX()
	-- AVG() -> devuelve el valor promedio de lo que se especifique
    
    