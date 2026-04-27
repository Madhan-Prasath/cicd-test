# Dockerfile
FROM python:3.10

WORKDIR /scripts

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]