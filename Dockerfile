 #Use uma Imagem Official do Python
FROM python:3.9-slim

# Definindo o diretório onde a aplicação será armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY . /app

# Instalar dependências
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Garante que será iniciado a aplicação.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app