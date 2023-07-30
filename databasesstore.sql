INSERT INTO `Persona` (`persona_id`, `nombre_persona`, `razonsocial_persona`, `direccion`, `telefono`, `persona_tipo`)
VALUES
  ("43959102-1","Laurel Sweeney","Nunc Ut Institute","225-5965 Dolor Rd.","(391) 891-8647","cliente"),
  ("34300632-2","Levi Mooney","Metus In Foundation","974-9361 Ac Rd.","1-125-774-9574","cliente"),
  ("19993582-8","Farrah Gonzalez","Mauris Company","P.O. Box 630, 8322 Lacus. St.","(667) 538-3786","cliente"),
  ("26893167-8","Dana Massey","Lacus LLC","Ap #282-4706 Risus Av.","1-212-988-1359","empleado"),
  ("374297-0","Juliet Maxwell","Sed Sapien Limited","181-2314 Tempor Rd.","(884) 270-0274","proveedor"),
  ("21577158-K","Hayden Aguilar","Diam Nunc Ullamcorper Incorporated","4262 Ac Rd.","(527) 684-1987","empleado"),
  ("17200612-4","Kaseem Haney","Eu Odio Tristique Institute","896-3941 Lectus, Rd.","1-365-736-5682","proveedor"),
  ("2897404-3","Nathaniel Mcmahon","Dictum Mi LLC","318-1973 Enim Avenue","1-772-568-4125","cliente"),
  ("49308844-0","Farrah Cohen","Quis Pede Praesent Corporation","8591 Morbi St.","1-820-846-4143","proveedor"),
  ("5484662-2","Zenia Lynch","In Ornare Sagittis Limited","Ap #851-8829 Leo. Street","1-777-463-3266","cliente"),
  ("44384572-0","Alexander Skinner","Interdum Ltd","Ap #893-8845 Euismod St.","1-710-120-8581","proveedor"),
  ("12431929-3","Dale Bell","Dolor Elit Institute","860-869 Lectus, St.","(343) 380-0272","cliente"),
  ("48157779-9","Phillip Middleton","Libero Industries","P.O. Box 400, 2558 Ipsum. Avenue","1-265-361-5832","empleado"),
  ("7232108-1","Nelle Townsend","Sem Semper LLC","471-9480 Lorem Rd.","(525) 784-6615","proveedor"),
  ("19890836-3","Linus Chavez","Fusce Diam Institute","460 Id, Av.","(550) 663-4883","cliente"),
  ("34214108-0","Rahim Donovan","Sed Et Libero LLC","110-8674 Aliquam, Rd.","(626) 328-7334","cliente"),
  ("3563614-5","Keely Ruiz","Eu Tellus Corporation","Ap #173-1280 Dolor. Ave","(234) 575-3293","empleado"),
  ("20849768-5","Tobias Bond","Sem Vitae LLP","Ap #143-2890 Fermentum Av.","(282) 322-1861","empleado"),
  ("7352822-4","Stella Hill","Auctor Non LLC","378-8575 Pharetra Rd.","(255) 503-7452","empleado"),
  ("8856331-K","Tamara Hewitt","Consectetuer Adipiscing Elit Inc.","265-8727 A Ave","1-343-572-6528","cliente");

-- Inserción de datos aleatorios en la tabla Categoria
INSERT INTO Categoria (categoria_id, nombre_categoria, nombre_subcategoria) VALUES
  ("CAT01", "Bienes de Consumo", "Electrodomésticos"),
  ("CAT02", "Bienes de Consumo", "Electrónica de Consumo"),
  ("CAT03", "Maquinaria Industrial", "Máquinas de Procesamiento"),
  ("CAT04", "Maquinaria Industrial", "Equipos de Embalaje"),
  ("CAT05", "Equipos y Componentes Electrónicos", "Componentes para Automóviles"),
  ("CAT06", "Equipos y Componentes Electrónicos", "Componentes Electrónicos"),
  ("CAT07", "Vehículos", "Automóviles de Pasajeros"),
  ("CAT08", "Vehículos", "Camiones y Autobuses"),
  ("CAT09", "Productos Electrónicos", "Dispositivos Móviles"),
  ("CAT10", "Productos Electrónicos", "Electrónica de Entretenimiento"),
  ("CAT11", "Productos Electrónicos", "Dispositivos de Computación");

-- Inserción de datos en la tabla Producto
INSERT INTO Producto (producto_id, nombre_producto, descripcion, precio, categoria_id)
VALUES
(200, "Refrigeradora", "Refrigeradora de acero inoxidable con capacidad de 500 litros.", 1500.75, "CAT01"),
(201, "Televisor LED", "Televisor LED de 55 pulgadas con resolución 4K Ultra HD.", 899.99, "CAT02"),
(202, "Máquina CNC", "Máquina CNC de alta precisión para el corte y mecanizado de piezas metálicas.", 35000.5, "CAT03"),
(203, "Empacadora Automática", "Empacadora automática para embalaje de productos en cajas de cartón.", 7800.25, "CAT04"),
(204, "Sistema de Navegación GPS", "Sistema de navegación GPS para vehículos con pantalla táctil y actualizaciones en tiempo real.", 299.5, "CAT05"),
(205, "Circuito Integrado", "Circuito integrado de alta potencia para sistemas electrónicos avanzados.", 20, "CAT06"),
(206, "Automóvil Eléctrico", "Automóvil eléctrico con una autonomía de 400 km por carga.", 30000, "CAT07"),
(207, "Camión de Carga", "Camión de carga con capacidad para transportar 10 toneladas de carga.", 45000.75, "CAT08"),
(208, "Teléfono Inteligente", "Teléfono inteligente con pantalla OLED y cámara de alta resolución.", 699.99, "CAT09"),
(209, "Sistema de Audio", "Sistema de audio para el hogar con sonido envolvente y conectividad Bluetooth.", 249.5, "CAT10"),
(210, "Computadora Portátil", "Computadora portátil con procesador de última generación y disco de estado sólido.", 899, "CAT11"),
(211, "Impresora 3D", "Impresora 3D de alta precisión para prototipado y fabricación aditiva.", 2500, "CAT03"),
(212, "Robot Aspiradora", "Robot aspiradora con mapeo inteligente y función de limpieza programada.", 349.99, "CAT04"),
(213, "Drone con Cámara", "Drone con cámara de alta definición y funciones de seguimiento automático.", 599.5, "CAT05"),
(214, "Monitor Gaming", "Monitor gaming de 27 pulgadas con frecuencia de actualización de 144Hz.", 449, "CAT06"),
(215, "Batería Solar", "Batería solar de alta capacidad para sistemas de energía renovable.", 1500, "CAT07"),
(216, "Escáner de Documentos", "Escáner de documentos de alta velocidad y escaneo a doble cara.", 299.99, "CAT08"),
(217, "Altavoz Bluetooth", "Altavoz Bluetooth portátil con resistencia al agua y larga duración de la batería.", 89.5, "CAT09"),
(218, "Laptop Gaming", "Laptop gaming con tarjeta gráfica dedicada y teclado retroiluminado.", 1199, "CAT10");


INSERT INTO Documento (documento_id, documento_tipo, numero_documento_id, documento_estado, fecha_emision, fecha_pago, documento_afecto, tasa_tipo, total, subtotal, imp_gravado, imp_nogravado)
VALUES
(1001, 'FT', '010-1001', 'COMPRA', '2023-06-15 10:30', '2023-07-30 08:00', 'SI', 0.18, 10205.1, 8648.39, 1556.71, 0),
(1002, 'BV', '002-2023', 'COMPRA', '2023-06-22 16:55', '2023-07-29 14:45', 'NO', 0, 7424.92, 7424.92, 0, 0),
(1003, 'RC', '001-7', 'COMPRA', '2023-06-30 17:10', '2023-07-30 17:10', 'NO', 0, 157502.25, 157502.25, 0, 0),
(1004, 'FT', '003-005', 'COMPRA', '2023-06-30 17:10', '2023-07-30 17:10', 'SI', 0, 28080.9, 23771.95, 4278.95, 30.00),
(1005, 'FT', '004-005', 'COMPRA', '2023-07-15 17:10', '2023-07-30 17:10', 'SI', 0.18, 1647.25, 1395.97, 251.28, 0),
(1006, 'FT', '004-005', 'COMPRA', '2023-07-20 17:10', '2023-07-30 17:10', 'SI', 0.18, 750, 635.59, 114.41, 0),
(1007, 'FT', '005-006', 'COMPRA', '2023-05-25 17:10', '2023-07-30 17:10', 'SI', 0.18, 204000, 172881.36, 31118.64, 0),
(1008, 'FT', '001-001', 'VENTA', '2023-07-18 11:45', '2023-07-25 09:15', 'SI', 0.18, 6003, 5087.29, 915.71, 0),
(1009, 'FT', '001-002', 'VENTA', '2023-07-28 14:20', '2023-07-27 11:30', 'SI', 0.18, 8999.9, 7627.03, 1372.87, 0),
(1010, 'FT', '001-003', 'VENTA', '2023-07-30 17:10', '2023-07-30 17:10', 'SI', 0.18, 175002.5, 148307.20, 26695.30, 0),
(1011, 'FT', '001-004', 'VENTA', '2023-07-25 17:10', '2023-07-30 17:10', 'SI', 0.18, 62402, 52883.05, 9518.95, 0),
(1012, 'FT', '001-005', 'VENTA', '2023-07-25 17:10', '2023-07-30 17:10', 'SI', 0.18, 2396, 2030.51, 365.49, 0),
(1013, 'FT', '001-006', 'VENTA', '2023-07-25 17:10', '2023-07-30 17:10', 'SI', 0.18, 600, 508.47, 91.53, 0),
(1014, 'BV', '002-007', 'VENTA', '2023-07-25 17:10', '2023-07-30 17:10', 'SI', 0.18, 90000, 76271.19, 13728.81, 0);


-- Inserción de datos en la tabla Pedido
INSERT INTO Pedido (pedido_id, estado, cantidad_vendida, cantidad_comprada, pv, pc, total_vendido, total_comprado, pedido_notas, documento_id, persona_id) VALUES
(2001, "Facturado", 0, 8, 0.00, 1275.64, 0.00, 10205.1, "Completado", 1001, "44384572-0"),
(2002, "Facturado", 0, 15, 0.00, 494.99, 0.00, 7424.9175, "Completado", 1002, "17200612-4"),
(2003, "Facturado", 0, 5, 0.00, 31500.45, 0.00, 157502.25, "Completado", 1003, "48157779-9"),
(2004, "Facturado", 0, 8, 0.00, 3510.11, 0.00, 28080.9, "Completado", 1004, "21577158-K"),
(2005, "Facturado", 0, 10, 0.00, 164.73, 0.00, 1647.25, "Completado", 1005, "20849768-5"),
(2006, "Facturado", 0, 150, 0.00, 5.00, 0.00, 750, "Completado", 1006, "7232108-1"),
(2007, "Facturado", 0, 8, 30000.00, 25500.00, 0.00, 204000, "Completado", 1007, "43959102-1"),
(2008, "Facturado", 4, 0, 1500.75, 0.00, 6003.00, 0, "Completado", 1008, "3563614-5"),
(2009, "Facturado", 10, 0, 899.99, 0.00, 8999.90, 0, "Completado", 1009, "2897404-3"),
(2010, "Facturado", 5, 0, 35000.50, 0.00, 175002.50, 0, "Completado", 1010, "7352822-4"),
(2011, "Facturado", 8, 0, 7800.25, 0.00, 62402.00, 0, "Completado", 1011, "8856331-K"),
(2012, "Facturado", 8, 0, 299.50, 0.00, 2396.00, 0, "Completado", 1012, "49308844-0"),
(2013, "Facturado", 30, 0, 20.00, 0.00, 600.00, 0, "Completado", 1013, "34300632-2"),
(2014, "Facturado", 3, 0, 30000.00, 0.00, 90000.00, 0, "Completado", 1014, "34214108-0"),
(2015, "Facturado", 1, 0, 30000.00, 0.00, 30000.00, 0, "Pendiente", 1009, "34214108-0"),
(2016, "Facturado", 1, 0, 30000.00, 0.00, 30000.00, 0, "Pendiente", 1009, "34214108-0");

INSERT INTO Inventario (inventario_id, inventario_nota, stock_inicial, stock_actual, producto_id, documento_id, pedido_id)
VALUES
(100, "operaciones", 0, 8, 200, 1001, 2001),
(101, "operaciones", 0, 15, 201, 1002, 2002),
(102, "operaciones", 0, 5, 202, 1003, 2003),
(103, "operaciones", 0, 8, 203, 1004, 2004),
(104, "operaciones", 0, 10, 204, 1005, 2005),
(105, "operaciones", 0, 150, 205, 1006, 2006),
(106, "operaciones", 0, 8, 206, 1007, 2007),
(107, "operaciones", 0, -4, 200, 1008, 2008),
(108, "operaciones", 0, -10, 201, 1009, 2009),
(109, "operaciones", 0, -5, 202, 1010, 2010),
(110, "operaciones", 0, -8, 203, 1011, 2011),
(111, "operaciones", 0, -8, 204, 1012, 2012),
(112, "operaciones", 0, -30, 205, 1013, 2013),
(113, "operaciones", 0, -3, 206, 1014, 2014),
(114, "operaciones", 0, -1, 206, 1009, 2015),
(115, "operaciones", 0, -1, 206, 1009, 2016);


-- Creación de la base de datos dbstore
CREATE DATABASE store;

-- Uso de la base de datos dbstore
USE store;

-- Creación de la tabla Persona
CREATE TABLE Persona (
  persona_id VARCHAR(20) PRIMARY KEY,
  nombre_persona VARCHAR(100),
  razonsocial_persona VARCHAR(100),
  direccion VARCHAR(150),
  telefono VARCHAR(20),
  persona_tipo VARCHAR(20)
);

-- Creación de la tabla Categoria
CREATE TABLE Categoria (
  categoria_id VARCHAR(30) PRIMARY KEY,
  nombre_categoria VARCHAR(150),
  nombre_subcategoria VARCHAR(150)
);

-- Creación de la tabla Producto
CREATE TABLE Producto (
  producto_id INT PRIMARY KEY,
  nombre_producto VARCHAR(255),
  descripcion VARCHAR(255),
  precio FLOAT,
  categoria_id VARCHAR(30),
  FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id)
);

-- Creación de la tabla Documento
CREATE TABLE Documento (
  documento_id INT PRIMARY KEY,
  documento_tipo VARCHAR(4),
  numero_documento_id VARCHAR(12),
  documento_estado VARCHAR(20),
  fecha_emision DATETIME,
  fecha_pago DATETIME,
  documento_afecto VARCHAR(2),
  tasa_tipo DECIMAL(10, 2),
  total FLOAT,
  subtotal FLOAT,
  imp_gravado INT,
  imp_nogravado INT
);

-- Creación de la tabla Pedido
CREATE TABLE Pedido (
  pedido_id INT PRIMARY KEY,
  estado VARCHAR(50),
  cantidad_vendida INT,
  cantidad_comprada INT,
  pv FLOAT,
  pc FLOAT,
  total_vendido FLOAT,
  total_comprado FLOAT,
  pedido_notas VARCHAR(255),
  documento_id INT,
  persona_id VARCHAR(20),
  FOREIGN KEY (documento_id) REFERENCES Documento(documento_id),
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

-- Creación de la tabla Inventario
CREATE TABLE Inventario (
  inventario_id INT PRIMARY KEY,
  inventario_nota VARCHAR(255),
  stock_inicial INT,
  stock_actual INT,
  producto_id INT,
  documento_id INT,
  pedido_id INT,
  FOREIGN KEY (producto_id) REFERENCES Producto(producto_id),
  FOREIGN KEY (documento_id) REFERENCES Documento(documento_id),
  FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id)
);






DELIMITER //
CREATE TRIGGER tr_actualizar_stock_compra
AFTER INSERT ON Pedido
FOR EACH ROW
BEGIN
  IF NEW.cantidad_comprada > 0 THEN
    UPDATE Inventario
    SET stock_actual = stock_actual + NEW.cantidad_comprada
    WHERE inventario_id = NEW.inventario_id;
  END IF;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER tr_actualizar_stock_venta
AFTER INSERT ON Pedido
FOR EACH ROW
BEGIN
  IF NEW.cantidad_vendida > 0 THEN
    UPDATE Inventario
    SET stock_actual = stock_actual - NEW.cantidad_vendida
    WHERE inventario_id = NEW.inventario_id;
  END IF;
END;
//
DELIMITER ;
-- Creación del desencadenante para calcular valores en la tabla Documento
--  documento_afecto VARCHAR(2)     -- SI, NO
-- tasa_tipo DECIMAL,      -- debe ser porcentaje 18%
--  subtotal FLOAT, ---  Agregar delimiter  si es documento_afecto=SI; subtotal=[tabla Pedidos]total_vendido/(1+tasa_tipo) + total_comprado/(1+tasa_tipo);si es documento_afecto=NO; subtotal=[tabla Pedidos]total_vendido+[tabla Pedidos]total_comprado
--  imp_gravado INT, ---  Agregar delimiter que se autocalcule la tabla Documentos si es documento_afecto=SI Y tasa_tipo=0.18; subtotal*tasa_tipo
--  imp_nogravado INT, ---  Agregar delimiter que se autocalcule la tabla Documentos si es documento_afecto=SI Y tasa_tipo=0.00; subtotal*tasa_tipo

DELIMITER //
CREATE TRIGGER tr_actualizar_documento
AFTER INSERT ON Pedido
FOR EACH ROW
BEGIN
  IF NEW.cantidad_vendida > 0 THEN
    UPDATE Documento
    SET 
      subtotal = (SELECT IFNULL(SUM(total_vendido), 0) + IFNULL(SUM(total_comprado), 0) FROM Pedido WHERE documento_id = NEW.documento_id),
      imp_gravado = (SELECT IFNULL(SUM(total_vendido), 0) * tasa_tipo FROM Pedido WHERE documento_id = NEW.documento_id),
      imp_nogravado = (SELECT IFNULL(SUM(total_comprado), 0) * tasa_tipo FROM Pedido WHERE documento_id = NEW.documento_id)
    WHERE documento_id = NEW.documento_id;
  END IF;
END;
//
DELIMITER ;
-- ERORS
ALTER TABLE `Persona`
MODIFY COLUMN `telefono` VARCHAR(20);

-- Paso 1: Agregar una nueva columna 'nuevo_producto_id' de tipo INT
ALTER TABLE Producto
ADD COLUMN nuevo_producto_id INT;

-- Paso 2: Actualizar la columna 'nuevo_producto_id' con los valores deseados
SET @contador = 2999; -- Establecer el valor inicial del contador
UPDATE Producto
SET nuevo_producto_id = (@contador := @contador + 1)
ORDER BY producto_id;

-- Paso 3: Eliminar la columna 'producto_id' y renombrar 'nuevo_producto_id' a 'producto_id'
ALTER TABLE Producto
DROP COLUMN producto_id,
CHANGE COLUMN nuevo_producto_id producto_id INT;

-- Paso 4: Restablecer el contador para futuras inserciones
SET @contador = 0;

--- mysql -u username –p;

SHOW DATABASES; 

Status
---
