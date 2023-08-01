from pydantic import BaseModel
from typing import Optional

# Esquema Pydantic para la tabla Persona

class PersonaBase(BaseModel):
    nombre: str
    correo: str
    direccion: str
    telefono: str
    rango_edad: str
    fecha_nacimiento: str

class PersonaCreate(PersonaBase):
    pass

class PersonaUpdate(BaseModel):
    nombre: Optional[str] = None
    correo: Optional[str] = None
    direccion: Optional[str] = None
    telefono: Optional[str] = None
    rango_edad: Optional[str] = None
    fecha_nacimiento: Optional[str] = None

class Persona(PersonaBase):
    persona_id: int

    class Config:
        orm_mode = True
