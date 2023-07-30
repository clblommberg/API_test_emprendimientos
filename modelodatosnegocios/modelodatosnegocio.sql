CREATE DATABASE small_business;
USE small_business

CREATE TABLE Persona (
persona_id INT PRIMARY KEY,
nombre VARCHAR(100),
correo VARCHAR(255),
direccion VARCHAR(150),
telefono VARCHAR(20),
rango_edad VARCHAR(20), 
fecha_nacimiento DATE,
);

CREATE TABLE Cliente (
  cliente_id INT PRIMARY KEY,
  ruc VARCHAR(11),
  nombre_comercial VARCHAR(255),
  persona_id INT,
  fecha_registro DATE,
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

CREATE TABLE Proveedor (
  proveedor_id INT PRIMARY KEY, 
  ruc VARCHAR(11),
  nombre_comercial VARCHAR(255),
  persona_id INT,
  fecha_registro DATE,
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

CREATE TABLE Empleado (
  empleado_id INT PRIMARY KEY,
  dni VARCHAR(8),
  persona_id INT,
  fecha_contratacion DATE,
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)  
);

CREATE TABLE Pedido (
pedido_id INT PRIMARY KEY,
fecha DATE,
total DECIMAL(10,2),
cliente_id INT,
FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE Compra (
compra_id INT PRIMARY KEY,
fecha DATE,
total DECIMAL(10,2),
proveedor_id INT,
FOREIGN KEY (proveedor_id) REFERENCES Proveedor(proveedor_id)
);

CREATE TABLE Categoria (
categoria_id INT PRIMARY KEY,
nombre VARCHAR(100),
descripcion VARCHAR(255)
);

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

CREATE TABLE Inventario (
inventario_id INT PRIMARY KEY,
producto_id INT,
cantidad INT,
fecha_actualizacion DATE,
FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);

CREATE TABLE DetallePedido (
detalle_id INT PRIMARY KEY,
pedido_id INT,
producto_id INT,
cantidad INT,
precio DECIMAL(10,2),
FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)

);

CREATE TABLE DetalleCompra (
detalle_id INT PRIMARY KEY,
compra_id INT,
producto_id INT,
cantidad INT,
precio DECIMAL(10,2),
FOREIGN KEY (compra_id) REFERENCES Compra(compra_id),
FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);
