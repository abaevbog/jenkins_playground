FROM ubuntu:latest

COPY . /app

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
WORKDIR /app

RUN apt-get update -y && \ 
    apt install -y python3 python3-pip && \
    pip3 install flask && \
    pip3 install requests

EXPOSE 5000

CMD python3 server.py





