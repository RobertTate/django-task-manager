FROM nikolaik/python-nodejs:python3.8-nodejs14

COPY . /app

WORKDIR /app/frontend

RUN npm install

RUN npm run build

WORKDIR /app/backend

RUN pip install pipenv

RUN pipenv install

EXPOSE 8000

CMD pipenv run python manage.py runserver 0.0.0.0:8000