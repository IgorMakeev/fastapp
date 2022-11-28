from enum import Enum

from fastapi import FastAPI

app = FastAPI()


class Something(str, Enum):
    one = 'one'
    two = 'two'
    three = 'three'


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/hello/{name}")
async def say_hello(name: str):
    return {"message": f"Hello {name}"}


@app.get('/enum/{model}')
async def test_enum(model: Something):
    return {'message', model}

