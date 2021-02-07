FROM node:14.15.2-buster

RUN apt update

RUN apt -y upgrade

RUN apt install -y python3-pip

COPY . /app

WORKDIR /app/frontend

RUN npm install

RUN npm run build

WORKDIR /app/backend

RUN pip3 install pipenv

RUN pipenv install

EXPOSE 8000

