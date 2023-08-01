-- Crear la tabla Persona
CREATE TABLE Persona (
persona_id INT PRIMARY KEY,
nombre VARCHAR(100),
correo VARCHAR(255),
direccion VARCHAR(150),
telefono VARCHAR(20),
rango_edad VARCHAR(20), 
fecha_nacimiento DATE,
);

-- Insertar los datos en la tabla Persona
INSERT INTO Persona (persona_id, nombre, correo, direccion, telefono, rango_edad, fecha_nacimiento)
VALUES
  (1,"Laurel Sweeney","sit.amet.diam@hotmail.ca","225-5965 Dolor Rd.","(391) 891-8647",,'1980-01-01'),
  (2,"Levi Mooney","tempor.lorem.eget@icloud.edu","974-9361 Ac Rd.","1-125-774-9574",,'1985-05-15'),
  (3,"Farrah Gonzalez","dis.parturient@outlook.org","P.O. Box 630, 8322 Lacus. St.","(667) 538-3786",,'2005-05-15'),
  (4,"Dana Massey","et@protonmail.org","Ap #282-4706 Risus Av.","1-212-988-1359",,'2010-05-15'),
  (5,"Juliet Maxwell","feugiat.lorem@google.com","181-2314 Tempor Rd.","(884) 270-0274",,'1990-05-15'),
  (6,"Hayden Aguilar","neque.sed@aol.ca","4262 Ac Rd.","(527) 684-1987",,'1993-05-15'),
  (7,"Kaseem Haney","quam.a@yahoo.edu","896-3941 Lectus, Rd.","1-365-736-5682",,'1994-05-15'),
  (8,"Nathaniel Mcmahon","sed@protonmail.net","318-1973 Enim Avenue","1-772-568-4125",,'2000-05-15'),
  (9,"Farrah Cohen","sed.dictum@outlook.couk","8591 Morbi St.","1-820-846-4143",,'2001-05-15'),
  (10,"Zenia Lynch","vulputate@outlook.com","Ap #851-8829 Leo. Street","1-777-463-3266",,'2004-05-15'),
  (11,"Alexander Skinner","vitae.nibh@protonmail.com","Ap #893-8845 Euismod St.","1-710-120-8581",,'1980-05-15'),
  (12,"Dale Bell","vitae.erat@hotmail.com","860-869 Lectus, St.","(343) 380-0272",,'1995-05-15'),
  (13,"Phillip Middleton","nibh@protonmail.cay","P.O. Box 400, 2558 Ipsum. Avenue","1-265-361-5832",,'1996-05-15'),
  (14,"Nelle Townsend","risus.quisque@google.net","471-9480 Lorem Rd.","(525) 784-6615",,'1999-05-15'),
  (15,"Linus Chavez","interdum@google.edu","460 Id, Av.","(550) 663-4883",,'2001-05-15'),
  (16,"Rahim Donovan","cursus@icloud.couk","110-8674 Aliquam, Rd.","(626) 328-7334",,'2002-05-15'),
  (17,"Keely Ruiz","bibendum@google.com","Ap #173-1280 Dolor. Ave","(234) 575-3293",,'1999-05-15'),
  (18,"Tobias Bond","tobiasbond@google.com","Ap #143-2890 Fermentum Av.","(282) 322-1861",,'1987-05-15'),
  (19,"Stella Hill","stellahill@google.com","378-8575 Pharetra Rd.","(255) 503-7452",,'1986-05-15'),
  (20,"Tamara Hewitt","tamarahewitt@google.com","265-8727 A Ave","1-343-572-6528",,'2001-05-15');

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY,
    ruc VARCHAR(20), --para produccion solo hay que cambiar a 11
    nombre_comercial VARCHAR(255),  
    persona_id INT,
    fecha_registro DATE,
    FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

-- Insertar los datos en la tabla Cliente
INSERT INTO Cliente (cliente_id, ruc, nombre_comercial,  persona_id, fecha_registro)
VALUES
  (1,"7323540-5","Pede Suspendisse Dui Institute",1,'2023-07-15'),
  (2,"36903321-2","Congue Turpis Associates",2,'2023-07-15'),
  (3,"11745859-8","Donec Tempor Est Associates",3,'2023-07-15'),
  (4,"1699775-7","Ligula Aenean Institute",8,'2023-07-15'),
  (5,"17884448-2","Tellus Eu Ltd",10,'2023-07-15'),
  (6,"1216688-5","Integer Vulputate Company",12,'2023-07-15'),
  (7,"35675107-8","Amet Ltd",13,'2023-07-15'),
  (8,"10365404-1","Integer Tincidunt Institute",15,'2023-07-15'),
  (9,"18787918-3","Consequat Auctor LLC",16,'2023-07-15'),
  (10,"3813289-K","Elementum LLP",17,'2023-07-15');


-- Crear la tabla Pedido
CREATE TABLE Pedido (
    pedido_id INT PRIMARY KEY,
    fecha DATE,
    total DECIMAL(10, 2),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

-- Insertar los datos en la tabla Pedido
INSERT INTO Pedido (pedido_id, fecha, total, cliente_id)
VALUES
  (2001, '2023-07-28', 10205.10,1),
  (2002, '2023-07-28',  175002.50,2),
  (2003, '2023-07-28', 62402.00,3),
  (2004, '2023-07-28',  2995.00,4),
  (2005, '2023-07-28', 600.00,5),
  (2006, '2023-07-28', 750.00,6),
  (2007, '2023-07-28', 204000.00,7),
  (2008, '2023-07-28', 6003.00,8),
  (2009, '2023-07-28', 8999.90,9),
  (2010, '2023-07-28', 175002.50,10),
  (2015, '2023-07-29', 30000.00,9),
  (2016, '2023-07-29', 30000.00,9);



CREATE TABLE Proveedor (
  proveedor_id INT PRIMARY KEY, 
  ruc VARCHAR(11),
  nombre_comercial VARCHAR(255),
  persona_id INT,
  fecha_registro DATE,
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

-- Insertar los datos en la tabla Proveedor
INSERT INTO Proveedor (proveedor_id, ruc, nombre_comercial, persona_id,  fecha_registro)
VALUES
  (1,"32444499-8","Lectus Quis Industries",5,'2023-07-15'),
  (2,"8926158-9","Auctor Non Feugiat Corp.",6,'2023-07-15'),
  (3,"24154983-6","Consectetuer Cursus Et Foundation",7,'2023-07-15'),
  (4,"10213648-9","Sagittis Semper Foundation",9,'2023-07-15'),
  (5,"47949347-2","Eget Nisi Foundation",11,'2023-07-15'),
  (6,"40759488-6","Diam At Company",18,'2023-07-15'),
  (7,"33834929-7","Et Tristique Ltd",19,'2023-07-15'),
  (8,"49597292-5","Ut Ltd",20,'2023-07-15'),
  (9,"14108468-2","In Consectetuer Ltd",16,'2023-07-15');


CREATE TABLE Empleado (
  empleado_id INT PRIMARY KEY,
  dni VARCHAR(8),
  persona_id INT,
  fecha_contratacion DATE,
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)  
);

-- Insertar los datos en la tabla Empleado
INSERT INTO Empleado (empleado_id, dni,  persona_id, fecha_contratacion)
VALUES
  (1,"31523479",4,'2023-07-15'),
  (2,"44442555",5,'2023-07-15'),
  (3,"23260320",6,'2023-07-15'),
  (4,"10917690",17,'2023-07-15'),
  (5,"28467465",18,'2023-07-15'),
  (6,"26954126",13,'2023-07-15'),
  (7,"33889310",14,'2023-07-15'),
  (8,"31861382",15,'2023-07-15'),
  (9,"27783538",16,'2023-07-15');


-- Crear la tabla Compra
CREATE TABLE Compra (
compra_id INT PRIMARY KEY,
fecha DATE,
total DECIMAL(10,2),
proveedor_id INT,
FOREIGN KEY (proveedor_id) REFERENCES Proveedor(proveedor_id)
);

-- Insertar los datos en la tabla Compra
INSERT INTO Compra (compra_id, fecha, total, proveedor_id)  
VALUES
  (1001, '2023-06-15', 175013.50, 1), 
  (1002, '2023-06-22', 35002.50, 2),
  (1003, '2023-06-30', 62402.00, 3),
  (1004, '2023-06-30', 2994.50, 4),
  (1005, '2023-07-15', 600.00, 5),
  (1006, '2023-07-20', 30000.00, 6), 
  (1007, '2023-05-25', 360002.50, 7),
  (1008, '2023-07-18', 5999.00, 8),
  (1009, '2023-07-28', 8999.90, 9);



CREATE TABLE Categoria (
    categoria_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255)
);

-- Insertar los datos en la tabla Categoria
INSERT INTO Categoria (categoria_id, nombre, descripcion) VALUES
  (1, "Bienes de Consumo", "Categoría que incluye productos destinados al consumo doméstico."),
  (2, "Maquinaria Industrial", "Categoría que abarca maquinaria y equipos utilizados en la industria manufacturera."),
  (3, "Equipos y Componentes Electrónicos", "Categoría que engloba dispositivos electrónicos y sus componentes."),
  (4, "Vehículos", "Categoría que incluye diversos tipos de vehículos motorizados."),
  (5, "Productos Electrónicos", "Categoría que abarca productos electrónicos para uso personal y entretenimiento.");

CREATE TABLE Producto (
    producto_id INT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion VARCHAR(255),
    precio DECIMAL(10,2),
    categoria_id INT,
    proveedor_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id),
    FOREIGN KEY (proveedor_id) REFERENCES Proveedor(proveedor_id)
);

-- Insertar los datos en la tabla Producto
INSERT INTO Producto (producto_id, nombre, descripcion, precio, categoria_id, proveedor_id) VALUES
(202, "Máquina CNC", "Máquina CNC de alta precisión para el corte y mecanizado de piezas metálicas.", 35000.50, 3, 9),
(203, "Empacadora Automática", "Empacadora automática para embalaje de productos en cajas de cartón.", 7800.25, 4, 7),
(204, "Sistema de Navegación GPS", "Sistema de navegación GPS para vehículos con pantalla táctil y actualizaciones en tiempo real.", 299.50, 5, 6),
(205, "Circuito Integrado", "Circuito integrado de alta potencia para sistemas electrónicos avanzados.", 20.00, 3, 8),
(207, "Camión de Carga", "Camión de carga con capacidad para transportar 10 toneladas de carga.", 45000.75, 4, 7),
(208, "Teléfono Inteligente", "Teléfono inteligente con pantalla OLED y cámara de alta resolución.", 699.99, 5, 9),
(210, "Computadora Portátil", "Computadora portátil con procesador de última generación y disco de estado sólido.", 899.00, 5, 8),
(214, "Monitor Gaming", "Monitor gaming de 27 pulgadas con frecuencia de actualización de 144Hz.", 449.00, 3, 8),
(218, "Laptop Gaming", "Laptop gaming con tarjeta gráfica dedicada y teclado retroiluminado.", 1199.00, 3, 9);

CREATE TABLE Inventario (
    inventario_id INT PRIMARY KEY,
    producto_id INT,
    cantidad INT,
    fecha_actualizacion DATE,
    FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);

-- Insertar los datos en la tabla Inventario
INSERT INTO Inventario (inventario_id, producto_id, cantidad, fecha_actualizacion) VALUES
(102, 202, 5, '2023-07-28'),
(103, 203, 8, '2023-07-28'),
(104, 204, 10, '2023-07-28'),
(105, 205, 150, '2023-07-28'),
(107, 207, -4, '2023-07-28'),
(108, 208, -10, '2023-07-28'),
(110, 210, -8, '2023-07-28');


CREATE TABLE DetallePedido (
    detalle_id INT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    precio DECIMAL(10,2),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
    FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);

-- Insertar los datos en la tabla DetallePedido
INSERT INTO DetallePedido (detalle_id, pedido_id, producto_id, cantidad, precio) VALUES
(3, 2002, 202, 5, 35000.50),
(4, 2003, 203, 8, 7800.25),
(5, 2004, 204, 10, 299.50),
(6, 2005, 205, 30, 20.00),
(8, 2007, 207, 8, 30000.00),
(9, 2008, 208, 4, 1500.75),
(11, 2010, 210, 5, 35000.50);


CREATE TABLE DetalleCompra (
    detalle_id INT PRIMARY KEY,
    compra_id INT,
    producto_id INT,
    cantidad INT,
    precio DECIMAL(10,2),
    FOREIGN KEY (compra_id) REFERENCES Compra(compra_id),
    FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);

-- Insertar los datos en la tabla DetalleCompra
INSERT INTO DetalleCompra (detalle_id, compra_id, producto_id, cantidad, precio) VALUES
(3, 1002, 202, 5, 35000.50),
(4, 1003, 203, 8, 7800.25),
(5, 1004, 204, 10, 299.50),
(6, 1005, 205, 30, 20.00),
(8, 1007, 207, 8, 30000.00),
(9, 1008, 208, 4, 1500.75);


