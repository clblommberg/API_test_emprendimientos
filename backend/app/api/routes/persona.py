from fastapi import APIRouter
from typing import List
from app.schemas.persona import Persona as PersonaSchema
from app.api.models.persona import Persona as DBPersona
from app.database import SessionLocal, engine

router = APIRouter()

@router.get("/", response_model=List[PersonaSchema])
async def read_personas(skip: int = 0, limit: int = 10):
    db = SessionLocal()
    personas = db.query(DBPersona).offset(skip).limit(limit).all()
    return personas

@router.get("/{persona_id}")
async def obtener_persona(persona_id: int):
    # Aquí implementarías la lógica para obtener una persona específica desde la base de datos
    return {"message": f"Detalles de la persona {persona_id}"}

@router.post("/")
async def crear_persona():
    # Aquí implementarías la lógica para crear una nueva persona en la base de datos
    return {"message": "Persona creada"}

@router.put("/{persona_id}")
async def actualizar_persona(persona_id: int):
    # Aquí implementarías la lógica para actualizar una persona existente en la base de datos
    return {"message": f"Persona {persona_id} actualizada"}

@router.delete("/{persona_id}")
async def eliminar_persona(persona_id: int):
    # Aquí implementarías la lógica para eliminar una persona existente de la base de datos
    return {"message": f"Persona {persona_id} eliminada"}
