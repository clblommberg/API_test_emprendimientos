# app/api/models/__init__.py
from .cliente import Cliente
from .pedido import Pedido
from .persona import Persona  # (y otras clases que tengas definidas en persona.py)
from app.database.session import Base, SessionLocal
