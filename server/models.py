#models.py
from sqlalchemy import Column, ForeignKey, Integer, String, Date, func
from database import Base, engine
from sqlalchemy.orm import relationship

class Persona(Base):
    __tablename__ = "Persona"
    persona_id = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(100))
    correo = Column(String(255))
    direccion = Column(String(150))
    telefono = Column(String(20))
    rango_edad = Column(String(20))
    fecha_nacimiento = Column(Date)
    
    # Establecer la relación con la entidad Cliente
    cliente = relationship("Cliente", back_populates="persona", uselist=False)

class Cliente(Base):
    __tablename__ = "Cliente"
    cliente_id = Column(Integer, primary_key=True, index=True)
    ruc = Column(String(20))
    nombre_comercial = Column(String(255))
    persona_id = Column(Integer, ForeignKey("Persona.persona_id", ondelete="CASCADE"))
    
    # Relación con la tabla Persona
    persona = relationship("Persona", back_populates="cliente", uselist=False)
    
# Esta línea sincroniza tus modelos con la base de datos
Base.metadata.create_all(bind=engine)
