FROM python:3.11-slim-bullseye

ENV ENV=dev

RUN apt-get update && \
    apt-get install git zsh vim curl make -y

# RUN sed -i 's/MinProtocol = TLSv1\.2/MinProtocol = TLSv1/' /etc/ssl/openssl.cnf

COPY requirements-dev.txt .

RUN pip install --upgrade pip
RUN pip install pipenv
RUN pip install -r ./requirements-dev.txt
