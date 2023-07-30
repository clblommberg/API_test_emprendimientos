## Insigths Compras

--Total comprado
SELECT SUM(total) AS total_comprado 
FROM Compra;

--Producto mas comprado
SELECT p.nombre, SUM(dc.cantidad) AS cantidad
FROM DetalleCompra dc
INNER JOIN Producto p ON dc.producto_id = p.producto_id
GROUP BY p.producto_id
ORDER BY cantidad DESC 
LIMIT 1;

--Registro Compras
SELECT
  c.compra_id,
  c.fecha,
  p.ruc,
  p.nombre_comercial,    
  dc.producto_id,
  pr.nombre AS producto,
  dc.cantidad,
  dc.precio,
  c.total
FROM Compra c
INNER JOIN Proveedor p ON c.proveedor_id = p.proveedor_id
INNER JOIN DetalleCompra dc ON c.compra_id = dc.compra_id
INNER JOIN Producto pr ON dc.producto_id = pr.producto_id
ORDER BY c.compra_id;

## Insigths Ventas

--¿Cuánto se ha vendido?
SELECT SUM(total) AS total_vendido
FROM Pedido;  

--¿Cuál es la curva de crecimiento de las ventas?
SELECT DATE_FORMAT(fecha, '%Y-%m') AS periodo, SUM(total) AS ventas
FROM Pedido
GROUP BY periodo
ORDER BY periodo;

--¿Cuál es el producto más vendido?
SELECT p.nombre, SUM(dp.cantidad) AS cantidad  
FROM DetallePedido dp
INNER JOIN Producto p ON dp.producto_id = p.producto_id
GROUP BY p.producto_id
ORDER BY cantidad DESC
LIMIT 1;

--Registro Ventas
SELECT
  p.pedido_id,
  p.fecha,
  c.ruc,
  c.nombre_comercial,
  dp.producto_id,
  pr.nombre AS producto,
  dp.cantidad,
  dp.precio,
  p.total 
FROM Pedido p
INNER JOIN Cliente c ON p.cliente_id = c.cliente_id
INNER JOIN DetallePedido dp ON p.pedido_id = dp.pedido_id
INNER JOIN Producto pr ON dp.producto_id = pr.producto_id
ORDER BY p.pedido_id;

## Insigths Clientes

--Clientes totales
SELECT COUNT(DISTINCT cliente_id) AS clientes_totales
FROM Cliente;

--Promedio Compra Clientes
SELECT AVG(total) AS promedio_compra
FROM Pedido;

--Promedio Compra Clientes por Generacion por Edad promedio (Reporte ganador)
SELECT
  p.rango_edad,
  COUNT(c.cliente_id) AS cantidad,
  AVG(YEAR(CURDATE()) - YEAR(p.fecha_nacimiento)) AS edad_promedio,  
  SUM(ped.total) AS total_ventas
FROM Persona p
INNER JOIN Cliente c ON p.persona_id = c.persona_id
INNER JOIN Pedido ped ON c.cliente_id = ped.cliente_id
GROUP BY p.rango_edad
ORDER BY total_ventas DESC;



/*Reporte de gerencia para Clientes */

UPDATE Persona
SET rango_edad =
    CASE
         WHEN YEAR(CURDATE()) - YEAR(fecha_nacimiento) >= 100 THEN 'Silent Generation'
        WHEN YEAR(CURDATE()) - YEAR(fecha_nacimiento) BETWEEN 75 AND 99 THEN 'Silent Generation'
        WHEN YEAR(CURDATE()) - YEAR(fecha_nacimiento) BETWEEN 56 AND 74 THEN 'Baby Boomer'
        WHEN YEAR(CURDATE()) - YEAR(fecha_nacimiento) BETWEEN 40 AND 55 THEN 'Generation X'
        WHEN YEAR(CURDATE()) - YEAR(fecha_nacimiento) BETWEEN 24 AND 39 THEN 'Millennial'
        WHEN YEAR(CURDATE()) - YEAR(fecha_nacimiento) <= 23 THEN 'Centennial'
        ELSE 'Unknown'
    END;


--Cmabiar el reporte e inclur formas 

UPDATE Persona
SET fecha_nacimiento =
    CASE persona_id
        WHEN 1 THEN '1980-01-01'
        WHEN 2 THEN '1985-05-15'
        WHEN 3 THEN '2005-05-15'
        WHEN 4 THEN '2010-05-15'
        WHEN 5 THEN '1990-05-15'
        WHEN 6 THEN '1993-05-15'
        WHEN 7 THEN '1994-05-15'
        WHEN 8 THEN '2000-05-15'
        WHEN 9 THEN '2001-05-15'
        WHEN 10 THEN '2004-05-15'
        WHEN 11 THEN '1980-05-15'
        WHEN 12 THEN '1985-05-15'
        WHEN 13 THEN '1996-05-15'
        WHEN 14 THEN '1999-05-15'
        WHEN 15 THEN '1986-05-15'
        WHEN 16 THEN '2002-05-15'
        WHEN 17 THEN '1999-05-15'
        WHEN 18 THEN '1987-05-15'
        WHEN 19 THEN '1986-05-15'
        WHEN 20 THEN '2001-05-15'
    END;
