CREATE TABLE Persona (
persona_id VARCHAR(20) PRIMARY KEY,
nombre VARCHAR(100),
razon_social VARCHAR(100),
direccion VARCHAR(150),
telefono VARCHAR(20),
tipo VARCHAR(20),
fecha_registro DATE
);

CREATE TABLE Categoria (
categoria_id VARCHAR(30) PRIMARY KEY,
nombre VARCHAR(150),
subcategoria VARCHAR(150)

);

CREATE TABLE Producto (
producto_id INT PRIMARY KEY,
nombre VARCHAR(255),
descripcion VARCHAR(255),
precio DECIMAL(10,2),
categoria_id VARCHAR(30),
proveedor_id VARCHAR(20),
FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id),
FOREIGN KEY (proveedor_id) REFERENCES Persona(persona_id)
);

CREATE TABLE Documento (
documento_id INT PRIMARY KEY,
tipo VARCHAR(4),
numero VARCHAR(12),
estado VARCHAR(20),
fecha_emision DATETIME,
fecha_pago DATETIME

);

CREATE TABLE Pedido (
pedido_id INT PRIMARY KEY,
estado VARCHAR(50),
cantidad_vendida INT,
cantidad_comprada INT,
total_vendido DECIMAL(10,2),
total_comprado DECIMAL(10,2),
nota VARCHAR(255),
documento_id INT,
cliente_id VARCHAR(20),
proveedor_id VARCHAR(20),
fecha DATE,
canal VARCHAR(20),
venta_valida VARCHAR(2),
FOREIGN KEY (documento_id) REFERENCES Documento(documento_id),
FOREIGN KEY (cliente_id) REFERENCES Persona(persona_id),
FOREIGN KEY (proveedor_id) REFERENCES Persona(persona_id)
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

CREATE TABLE Inventario (
inventario_id INT PRIMARY KEY,
producto_id INT,
stock_inicial INT,
stock_actual INT,
fecha_recepcion DATE,
FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);
