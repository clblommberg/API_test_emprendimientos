from sqlalchemy.orm import Session
from . import models

# Funciones CRUD para la tabla Persona

def get_persona(db: Session, persona_id: int):
    return db.query(models.Persona).filter(models.Persona.persona_id == persona_id).first()

def get_personas(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.Persona).offset(skip).limit(limit).all()

def create_persona(db: Session, persona: models.Persona):
    db.add(persona)
    db.commit()
    db.refresh(persona)
    return persona

def update_persona(db: Session, persona_id: int, nombre: str, correo: str, direccion: str, telefono: str,
                   rango_edad: str, fecha_nacimiento: str):
    persona = db.query(models.Persona).filter(models.Persona.persona_id == persona_id).first()
    if persona:
        persona.nombre = nombre
        persona.correo = correo
        persona.direccion = direccion
        persona.telefono = telefono
        persona.rango_edad = rango_edad
        persona.fecha_nacimiento = fecha_nacimiento
        db.commit()
        db.refresh(persona)
    return persona

def delete_persona(db: Session, persona_id: int):
    persona = db.query(models.Persona).filter(models.Persona.persona_id == persona_id).first()
    if persona:
        db.delete(persona)
        db.commit()
    return persona


# Funciones CRUD para la tabla Cliente

def get_cliente(db: Session, cliente_id: int):
    return db.query(models.Cliente).filter(models.Cliente.cliente_id == cliente_id).first()

def get_clientes(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.Cliente).offset(skip).limit(limit).all()

def create_cliente(db: Session, cliente: models.Cliente):
    db.add(cliente)
    db.commit()
    db.refresh(cliente)
    return cliente

def update_cliente(db: Session, cliente_id: int, ruc: str, nombre_comercial: str, fecha_registro: str):
    cliente = db.query(models.Cliente).filter(models.Cliente.cliente_id == cliente_id).first()
    if cliente:
        cliente.ruc = ruc
        cliente.nombre_comercial = nombre_comercial
        cliente.fecha_registro = fecha_registro
        db.commit()
        db.refresh(cliente)
    return cliente

def delete_cliente(db: Session, cliente_id: int):
    cliente = db.query(models.Cliente).filter(models.Cliente.cliente_id == cliente_id).first()
    if cliente:
        db.delete(cliente)
        db.commit()
    return cliente


# Funciones CRUD para la tabla Pedido

def get_pedido(db: Session, pedido_id: int):
    return db.query(models.Pedido).filter(models.Pedido.pedido_id == pedido_id).first()

def get_pedidos(db: Session, skip: int = 0, limit: int = 10):
    return db.query(models.Pedido).offset(skip).limit(limit).all()

def create_pedido(db: Session, pedido: models.Pedido):
    db.add(pedido)
    db.commit()
    db.refresh(pedido)
    return pedido

def update_pedido(db: Session, pedido_id: int, fecha: str, total: float):
    pedido = db.query(models.Pedido).filter(models.Pedido.pedido_id == pedido_id).first()
    if pedido:
        pedido.fecha = fecha
        pedido.total = total
        db.commit()
        db.refresh(pedido)
    return pedido

def delete_pedido(db: Session, pedido_id: int):
    pedido = db.query(models.Pedido).filter(models.Pedido.pedido_id == pedido_id).first()
    if pedido:
        db.delete(pedido)
        db.commit()
    return pedido
