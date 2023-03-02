FROM python:3.10

RUN apt-get update
RUN apt-get install default-jdk make -y

COPY requirements.txt ./
RUN pip install -r requirements.txt