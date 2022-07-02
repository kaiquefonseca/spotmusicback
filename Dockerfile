 #Use uma Imagem Official do Python
FROM python:rc-slim

# Definindo o diret�rio onde a aplica��o ser� armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY . /app


# Garante que ser� iniciado a aplica��o.
CMD ["run-program", "gunicorn", "app:app"]