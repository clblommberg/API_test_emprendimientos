from pydantic import BaseModel

class Pedido(BaseModel):
    pedido_id: int
    fecha: str
    total: float
    cliente_id: int
