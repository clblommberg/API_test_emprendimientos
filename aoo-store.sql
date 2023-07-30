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
  imp_nogravado INT,
  producto_id INT,
  cliente_id VARCHAR(20),
  proveedor_id VARCHAR(20),
  FOREIGN KEY (producto_id) REFERENCES Producto(producto_id),
  FOREIGN KEY (cliente_id) REFERENCES Persona(persona_id),
  FOREIGN KEY (proveedor_id) REFERENCES Persona(persona_id)
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
  facturado BOOLEAN,
  fecha_pedido DATETIME,
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
