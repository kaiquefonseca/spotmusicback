 #Use uma Imagem Official do Python
FROM python:rc-slim

# Definindo o diretório onde a aplicação será armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY . /app


# Garante que será iniciado a aplicação.
CMD ["run-program", "gunicorn", "app:app"]