FROM python:3.8.2

COPY . /app/backend

WORKDIR /app/backend

RUN pip install pipenv

RUN pipenv install

EXPOSE 8000