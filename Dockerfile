FROM python:3

WORKDIR /app

# Copia el archivo de requerimientos y con las dependencias
COPY requirements.txt .

# Instala las dependencias de Python
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
