# Usa una imagen base
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app

# Instala dependencias
RUN pip install --no-cache-dir -r requeriments.txt

# Expone el puerto que usará Django
EXPOSE 8000

# Comando por defecto (puedes ajustar según tu proyecto)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]