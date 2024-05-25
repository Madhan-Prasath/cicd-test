# Dockerfile
FROM python:latest

WORKDIR /scripts

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]