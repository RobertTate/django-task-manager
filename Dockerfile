FROM node:14.15.2-slim

RUN apt-get update && apt-get upgrade -y

RUN apt-get install python -y

COPY . /app

WORKDIR /app/frontend

RUN npm install

RUN npm run build

WORKDIR /app/backend

RUN pip install pipenv

RUN pipenv install

EXPOSE 8000

