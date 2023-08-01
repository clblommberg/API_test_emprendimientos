from fastapi import FastAPI
from app.api.routes import cliente, pedido
# Creamos una instancia de la aplicación FastAPI
app = FastAPI()


@app.get("/")
async def read_root():
    return {"message": "Bienvenido a My API"}

app.include_router(cliente.router, prefix="/clientes", tags=["clientes"])
app.include_router(pedido.router, prefix="/pedidos", tags=["pedidos"])
