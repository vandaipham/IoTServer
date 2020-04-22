FROM python:3.7

ENV PYTHONUNBUFFERED 1

RUN mkdir /iotserver
WORKDIR /iotserver
COPY requirements.txt /iotserver/
RUN pip install -r requirements.txt
COPY ./iotserver /iotserver/

# Set up a non-root user
RUN useradd user
USER user