# Start from official Python image on Docker Hub
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements first (so Docker caches this layer)
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy rest of your code
COPY . .

# Command to run when container starts
CMD uvicorn main:app --host 0.0.0.0 --port ${PORT:-8000}