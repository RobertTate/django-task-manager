FROM node:14.15.2

RUN apt-get update || : && apt-get install python3.8

COPY . /app

WORKDIR /app/frontend

RUN npm install

RUN npm run build

WORKDIR /app/backend

RUN pip install pipenv

RUN pipenv install

EXPOSE 8000

