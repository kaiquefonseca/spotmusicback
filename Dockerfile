 #Use uma Imagem Official do Python
FROM python:3.9-slim

# Definindo o diret�rio onde a aplica��o ser� armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY . /app

# Instalar depend�ncias
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Garante que ser� iniciado a aplica��o.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app