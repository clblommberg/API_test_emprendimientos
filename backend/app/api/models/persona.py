# models/persona.py
from sqlalchemy import Column, Integer, String, Date
from app.database.session import Base


class Persona(Base):
    __tablename__ = "Persona"
    persona_id = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(100))
    correo = Column(String(255))
    direccion = Column(String(150))
    telefono = Column(String(20))
    rango_edad = Column(String(20))
    fecha_nacimiento = Column(Date)
