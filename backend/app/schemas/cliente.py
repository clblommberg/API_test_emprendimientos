from pydantic import BaseModel
from typing import List, Optional

# Esquema Pydantic para la tabla Cliente

class ClienteBase(BaseModel):
    ruc: str
    nombre_comercial: str
    fecha_registro: str

class ClienteCreate(ClienteBase):
    pass

class ClienteUpdate(BaseModel):
    ruc: Optional[str] = None
    nombre_comercial: Optional[str] = None
    persona_id: Optional[int] = None

class Cliente(ClienteBase):
    cliente_id: int

    class Config:
        orm_mode = True
