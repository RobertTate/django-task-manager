FROM node:14.15.2

RUN apt-get update && apt-get upgrade -y

RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt-get install python3.8 -y

COPY . /app

WORKDIR /app/frontend

RUN npm install

RUN npm run build

WORKDIR /app/backend

RUN pip install pipenv

RUN pipenv install

EXPOSE 8000

