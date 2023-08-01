from pydantic import BaseModel

class PedidoBase(BaseModel):
    fecha: str
    total: float

class PedidoCreate(PedidoBase):
    cliente_id: int

class Pedido(PedidoBase):
    pedido_id: int
    cliente_id: int

    class Config:
        orm_mode = True
