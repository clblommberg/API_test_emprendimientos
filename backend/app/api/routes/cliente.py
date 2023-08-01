from fastapi import APIRouter
from typing import List
from app.schemas.cliente import Cliente as ClienteSchema
from app.api.models.cliente import Cliente as DBCliente
from app.database import SessionLocal, engine

router = APIRouter()

@router.get("/", response_model=List[ClienteSchema])
async def read_clientes(skip: int = 0, limit: int = 10):
    db = SessionLocal()
    clientes = db.query(DBCliente).offset(skip).limit(limit).all()
    return clientes


@router.get("/{cliente_id}")
async def obtener_cliente(cliente_id: int):
    # Aquí implementarías la lógica para obtener un cliente específico desde la base de datos
    return {"message": f"Detalles del cliente {cliente_id}"}

@router.post("/")
async def crear_cliente():
    # Aquí implementarías la lógica para crear un nuevo cliente en la base de datos
    return {"message": "Cliente creado"}

@router.put("/{cliente_id}")
async def actualizar_cliente(cliente_id: int):
    # Aquí implementarías la lógica para actualizar un cliente existente en la base de datos
    return {"message": f"Cliente {cliente_id} actualizado"}

@router.delete("/{cliente_id}")
async def eliminar_cliente(cliente_id: int):
    # Aquí implementarías la lógica para eliminar un cliente existente de la base de datos
    return {"message": f"Cliente {cliente_id} eliminado"}
