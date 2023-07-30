CREATE TABLE Persona (
  persona_id INT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(255),
  direccion VARCHAR(150),
  telefono VARCHAR(20) 
);

CREATE TABLE Contacto (
  contacto_id INT PRIMARY KEY,
  persona_id INT,
  email VARCHAR(255),
  telefono VARCHAR(20),
  direccion VARCHAR(150),
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

CREATE TABLE Cliente (
  cliente_id INT PRIMARY KEY,
  ruc VARCHAR(11),
  nombre_comercial VARCHAR(255),
  direccion_envio VARCHAR(150),
  direccion_factura VARCHAR(150), 
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

CREATE TABLE Usuario (
  usuario_id INT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(255),
  rol VARCHAR(20),
  persona_id INT,
  FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
);

CREATE TABLE Pedido (
  pedido_id INT PRIMARY KEY,
  fecha DATE,
  total DECIMAL(10,2),
  estado VARCHAR(20),
  cliente_id INT,
  FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

CREATE TABLE FormaPago (
  forma_pago_id INT PRIMARY KEY,
  nombre VARCHAR(50)
);

CREATE TABLE Auditoria (
  auditoria_id INT PRIMARY KEY,
  tabla VARCHAR(50),
  registro_id INT,
  accion VARCHAR(50),
  fecha DATE
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

CREATE TABLE Detalle (
  detalle_id INT PRIMARY KEY,
  pedido_compra_id INT,
  producto_id INT,
  cantidad INT,
  precio DECIMAL(10,2),
  tipo VARCHAR(10),
  FOREIGN KEY (pedido_compra_id) REFERENCES Pedido(pedido_id),
  FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);

-- Índices
CREATE INDEX idx_pedido_fecha ON Pedido(fecha); 
CREATE INDEX idx_producto_proveedor ON Producto(proveedor_id);
CREATE INDEX idx_inventario_producto ON Inventario(producto_id);
CREATE INDEX idx_detalle_pedido ON Detalle(pedido_compra_id); 

-- Restricciones
ALTER TABLE Producto ADD CHECK (precio > 0);
ALTER TABLE Detalle ADD CHECK (cantidad > 0);

CREATE INDEX idx_pedido_fecha ON Pedido(fecha);

