/*
Ejercicios sobre agrupaciones
1. Obtener el importe total de ventas de cada departamento.
2. Obtener el importe total de gastos de cada departamento.
3. Obtener el número de registros de cada tipo de cuenta contable.
4. Obtener el importe total de ventas de cada mes.
5. Obtener el importe total de ventas de cada departamento y mes.
6. Obtener el número de registros de cada tipo de cuenta contable y mes.
7. Obtener el importe total de ventas de cada departamento y mes, ordenado por
importe de mayor a menor.
8. Obtener el número de registros de cada tipo de cuenta contable y mes,
ordenados por mes de mayor a menor.
*/

-- Tabla para los ejercicios.
use conquer;

CREATE TABLE contabilidad (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE,
  concepto VARCHAR(255),
  importe DECIMAL(10,2),
  cuenta_contable VARCHAR(255),
  departamento VARCHAR(255)
);

INSERT INTO contabilidad (fecha, concepto, importe, cuenta_contable, departamento) VALUES
('2023-07-20', 'Compra de mercadería', 10000.00, '4000', 'Ventas'),
('2023-07-21', 'Venta de mercadería', 20000.00, '4100', 'Ventas'),
('2023-07-22', 'Pago de sueldos', 5000.00, '4200', 'Gastos de personal'),
('2023-07-23', 'Pago de alquiler', 3000.00, '4300', 'Gastos generales'),
('2023-07-24', 'Pago de luz', 2000.00, '4400', 'Gastos generales'),
('2023-07-25', 'Pago de agua', 1000.00, '4400', 'Gastos generales'),
('2023-07-26', 'Recepción de préstamo', 100000.00, '1000', 'Activos financieros'),
('2023-07-27', 'Compra de equipo de cómputo', 50000.00, '2000', 'Activos fijos'),
('2023-07-28', 'Pago de intereses de préstamo', 5000.00, '6300', 'Gastos financieros'),
('2023-08-01', 'Compra de mercadería', 15000.00, '4000', 'Ventas'),
('2023-08-02', 'Venta de mercadería', 25000.00, '4100', 'Ventas'),
('2023-08-03', 'Pago de sueldos', 7500.00, '4200', 'Gastos de personal'),
('2023-08-04', 'Pago de alquiler', 4500.00, '4300', 'Gastos generales'),
('2023-08-05', 'Pago de luz', 3000.00, '4400', 'Gastos generales'),
('2023-08-06', 'Pago de agua', 1500.00, '4400', 'Gastos generales'),
('2023-08-07', 'Recepción de dividendos', 50000.00, '1000', 'Activos financieros'),
('2023-08-08', 'Compra de mobiliario', 25000.00, '2000', 'Activos fijos'),
('2023-08-09', 'Pago de intereses de préstamo', 2500.00, '6300', 'Gastos financieros');

-- Comprobamos que se ha creado e insertado correctamente.
SELECT * FROM conquer.contabilidad;

-- Ejercicios sobre agrupaciones
-- 1. Obtener el importe total de ventas de cada departamento.
SELECT departamento, sum(importe) as Importe_Total 
FROM conquer.contabilidad
	group by departamento;

-- 2. Obtener el importe total de gastos de cada departamento.
SELECT * FROM conquer.contabilidad
	WHERE departamento LIKE 'gastos%';
    
SELECT departamento, sum(importe) as Gasto
FROM conquer.contabilidad
	WHERE cuenta_contable IN ('4200', '4300', '4400', '6300')
    group by departamento;

-- 3. Obtener el número de registros de cada tipo de cuenta contable.
SELECT * FROM conquer.contabilidad;

SELECT cuenta_contable, count(*) as numero_registros
FROM conquer.contabilidad
	group by cuenta_contable;

-- 4. Obtener el importe total de ventas de cada mes.
SELECT * FROM conquer.contabilidad;

SELECT departamento,
		month(fecha) as Mes,
		sum(importe) as Importe_total
FROM conquer.contabilidad
	WHERE departamento='Ventas'
		group by month(fecha);

-- 5. Obtener el importe total de ventas de cada departamento y mes.
SELECT * FROM conquer.contabilidad;

SELECT departamento,
		month(fecha) as Mes, 
		sum(importe) as Importe_total
FROM conquer.contabilidad	
	group by month(fecha), departamento;

-- 6. Obtener el número de registros de cada tipo de cuenta contable y mes.
SELECT * FROM conquer.contabilidad;

SELECT cuenta_contable, 
		month(fecha) as Mes, 
        count(*) as numero_registros
FROM conquer.contabilidad
	WHERE cuenta_contable IN ('4200', '4300', '4400', '6300')
    group by cuenta_contable, month(fecha);

-- 7. Obtener el importe total de ventas de cada departamento y mes, ordenado por
	-- importe de mayor a menor.
SELECT * FROM conquer.contabilidad;
  
SELECT departamento, 
		month(fecha) as Mes, 
		sum(importe) as Importe_total
FROM conquer.contabilidad
	WHERE departamento='Ventas'
    group by departamento, month(fecha)
    order by importe_total DESC;

-- 8. Obtener el número de registros de cada tipo de cuenta contable y mes,
	-- ordenados por mes de mayor a menor.
SELECT * FROM conquer.contabilidad;    

SELECT cuenta_contable, 
		month(fecha) as Mes, 
        count(*) as numero_registros
FROM conquer.contabilidad
	group by cuenta_contable, month(fecha)
    order by numero_registros DESC;
