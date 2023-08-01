from sqlalchemy import Column, Integer, String, Date
from sqlalchemy import Column, Integer, String, Date, ForeignKey
from sqlalchemy.orm import relationship

from app.database.session import Base


class Cliente(Base):
    __tablename__ = "Cliente"
    cliente_id = Column(Integer, primary_key=True, index=True)
    ruc = Column(String(20))
    nombre_comercial = Column(String(255))
    persona_id = Column(Integer, ForeignKey("Persona.persona_id"))
    fecha_registro = Column(Date)
    persona = relationship("Persona", back_populates="cliente")
