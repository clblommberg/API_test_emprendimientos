from sqlalchemy import Column, Integer, String, Date, DECIMAL, ForeignKey
from sqlalchemy.orm import relationship
from .session import Base

class Persona(Base):
    __tablename__ = "Persona"
    persona_id = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(100))
    correo = Column(String(255))
    direccion = Column(String(150))
    telefono = Column(String(20))
    rango_edad = Column(String(20))
    fecha_nacimiento = Column(Date)

class Cliente(Base):
    __tablename__ = "Cliente"
    cliente_id = Column(Integer, primary_key=True, index=True)
    ruc = Column(String(20))
    nombre_comercial = Column(String(255))
    persona_id = Column(Integer, ForeignKey("Persona.persona_id"))
    fecha_registro = Column(Date)
    persona = relationship("Persona", back_populates="cliente")

class Pedido(Base):
    __tablename__ = "Pedido"
    pedido_id = Column(Integer, primary_key=True, index=True)
    fecha = Column(Date)
    total = Column(DECIMAL(10, 2))
    cliente_id = Column(Integer, ForeignKey("Cliente.cliente_id"))
    cliente = relationship("Cliente", back_populates="pedidos")
    detalles = relationship("DetallePedido", back_populates="pedido")

class Proveedor(Base):
    __tablename__ = "Proveedor"
    proveedor_id = Column(Integer, primary_key=True, index=True)
    ruc = Column(String(11))
    nombre_comercial = Column(String(255))
    persona_id = Column(Integer, ForeignKey("Persona.persona_id"))
    fecha_registro = Column(Date)
    persona = relationship("Persona", back_populates="proveedor")

class Empleado(Base):
    __tablename__ = "Empleado"
    empleado_id = Column(Integer, primary_key=True, index=True)
    dni = Column(String(8))
    persona_id = Column(Integer, ForeignKey("Persona.persona_id"))
    fecha_contratacion = Column(Date)
    persona = relationship("Persona", back_populates="empleado")

class Categoria(Base):
    __tablename__ = "Categoria"
    categoria_id = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(100))
    descripcion = Column(String(255))

class Producto(Base):
    __tablename__ = "Producto"
    producto_id = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(255))
    descripcion = Column(String(255))
    precio = Column(DECIMAL(10, 2))
    categoria_id = Column(Integer, ForeignKey("Categoria.categoria_id"))
    proveedor_id = Column(Integer, ForeignKey("Proveedor.proveedor_id"))
    categoria = relationship("Categoria", back_populates="productos")
    proveedor = relationship("Proveedor", back_populates="productos")
    inventario = relationship("Inventario", back_populates="producto")
    detalles_pedido = relationship("DetallePedido", back_populates="producto")
    detalles_compra = relationship("DetalleCompra", back_populates="producto")

class Inventario(Base):
    __tablename__ = "Inventario"
    inventario_id = Column(Integer, primary_key=True, index=True)
    producto_id = Column(Integer, ForeignKey("Producto.producto_id"))
    cantidad = Column(Integer)
    fecha_actualizacion = Column(Date)
    producto = relationship("Producto", back_populates="inventario")

class DetallePedido(Base):
    __tablename__ = "DetallePedido"
    detalle_id = Column(Integer, primary_key=True, index=True)
    pedido_id = Column(Integer, ForeignKey("Pedido.pedido_id"))
    producto_id = Column(Integer, ForeignKey("Producto.producto_id"))
    cantidad = Column(Integer)
    precio = Column(DECIMAL(10, 2))
    pedido = relationship("Pedido", back_populates="detalles")
    producto = relationship("Producto", back_populates="detalles_pedido")

class DetalleCompra(Base):
    __tablename__ = "DetalleCompra"
    detalle_id = Column(Integer, primary_key=True, index=True)
    compra_id = Column(Integer, ForeignKey("Compra.compra_id"))
    producto_id = Column(Integer, ForeignKey("Producto.producto_id"))
    cantidad = Column(Integer)
    precio = Column(DECIMAL(10, 2))
    compra = relationship("Compra", back_populates="detalles")
    producto = relationship("Producto", back_populates="detalles_compra")
