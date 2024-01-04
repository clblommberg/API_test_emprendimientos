from fastapi import FastAPI, HTTPException, Depends, status
from sqlalchemy.orm import Session
from database import SessionLocal, engine
from models import Persona as PersonaModel, Cliente as ClienteModel
from pydantic import BaseModel
from typing import List
from datetime import date

from typing import Optional

app = FastAPI()

# Definición de los modelos Pydantic para validación de datos
class PersonaBase(BaseModel):
    nombre: str
    correo: str
    direccion: str
    telefono: str
    rango_edad: str
    fecha_nacimiento: date

class PersonaCreate(PersonaBase):
    pass

class PersonaUpdate(PersonaBase):
    pass

class Persona(PersonaBase):
    persona_id: int

    class Config:
        orm_mode = True

# Definición de los modelos Pydantic para validación de datos
class ClienteBase(BaseModel):
    ruc: str
    nombre_comercial: str
    persona_id: int

class ClienteCreate(ClienteBase):
    pass

class Cliente(ClienteBase):
    cliente_id:Optional[int]  # Hacer cliente_id opcional en el modelo Cliente

    class Config:
        orm_mode = True

        

# Obtener la sesión de la base de datos
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# Operaciones CRUD para Persona
db_dependency = Depends(get_db)
@app.get("/personas/", response_model=List[Persona])
async def read_personas(skip: int = 0, limit: int = 10, db: Session = db_dependency):
    personas = db.query(PersonaModel).offset(skip).limit(limit).all()
    return personas

@app.post("/persona/", response_model=Persona)
async def create_persona(persona: PersonaCreate, db: Session = db_dependency):
    db_persona = PersonaModel(**persona.dict())
    db.add(db_persona)
    db.commit()
    db.refresh(db_persona)
    return db_persona

@app.get("/persona/{persona_id}", response_model=Persona)
async def read_persona(persona_id: int, db: Session = db_dependency):
    db_persona = db.query(PersonaModel).filter(PersonaModel.persona_id == persona_id).first()
    if db_persona is None:
        raise HTTPException(status_code=404, detail="Persona no encontrada")
    return db_persona

@app.put("/persona/{persona_id}", response_model=Persona)
async def update_persona(persona_id: int, persona: PersonaUpdate, db: Session = db_dependency):
    db_persona = db.query(PersonaModel).filter(PersonaModel.persona_id == persona_id).first()
    if db_persona is None:
        raise HTTPException(status_code=404, detail="Persona no encontrada")
    
    # Actualizar campos de la persona
    for var, value in vars(persona).items():
        setattr(db_persona, var, value) if value else None
    
    db.commit()
    db.refresh(db_persona)
    return db_persona

@app.delete("/persona/{persona_id}", status_code=status.HTTP_204_NO_CONTENT)
async def delete_persona(persona_id: int, db: Session = db_dependency):
    db_persona = db.query(PersonaModel).filter(PersonaModel.persona_id == persona_id).first()
    if db_persona is None:
        raise HTTPException(status_code=404, detail="Persona no encontrada")
    
    db.delete(db_persona)
    db.commit()
    return {}

# Operaciones CRUD para Cliente
@app.get("/persona/{persona_id}/cliente", response_model=Cliente)
async def read_cliente_de_persona(persona_id: int, db: Session = db_dependency):
    db_persona = db.query(PersonaModel).filter(PersonaModel.persona_id == persona_id).first()
    if db_persona is None:
        raise HTTPException(status_code=404, detail="Persona no encontrada")
    
    if not db_persona.cliente:
        raise HTTPException(status_code=404, detail="Cliente no asociado a esta persona")
    
    return db_persona.cliente


# Operaciones CRUD para Cliente
@app.post("/persona/{persona_id}/cliente", response_model=Cliente)
async def create_cliente(persona_id: int, cliente_data: ClienteCreate, db: Session = db_dependency):
    db_persona = db.query(PersonaModel).filter(PersonaModel.persona_id == persona_id).first()
    if db_persona is None:
        raise HTTPException(status_code=404, detail="Persona no encontrada")

    # Crear una nueva instancia de Cliente asociada a la persona correspondiente
    new_cliente = ClienteModel(
        ruc=cliente_data.ruc,
        nombre_comercial=cliente_data.nombre_comercial,
        persona_id=persona_id  # Asignar directamente el ID de la persona proporcionado
    )
    
    db.add(new_cliente)
    db.commit()
    db.refresh(new_cliente)

    return new_cliente




