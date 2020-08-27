FROM python:3.8

WORKDIR /code
COPY . .
RUN pip install pipenv behave
RUN pipenv install --system --deploy --ignore-pipfile
CMD ["behave"]
