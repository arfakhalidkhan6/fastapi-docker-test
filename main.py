from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "ArtikIQ is live on Railway!"}