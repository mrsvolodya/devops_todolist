ARG PYTHON_VERSTION=3.10
FROM python:${PYTHON_VERSTION}

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

ENV PYTHONUNDUFFERED=1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
