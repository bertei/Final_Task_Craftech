FROM python:3.8-alpine

ENV PYTHONBUFFERED=1

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev zlib-dev jpeg-dev graphviz-dev libpq
RUN pip install --upgrade pip

WORKDIR /backend
COPY . .

RUN ls -l

RUN cat ./requirements.txt

RUN python -m pip install -r backend/requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


