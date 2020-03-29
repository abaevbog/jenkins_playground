FROM ubuntu

USER root
WORKDIR /home/
COPY server.py .
ENV FLASK_APP=server.py 
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update && \ 
    apt install -y python3 python3-pip && \
    pip3 install flask 

CMD flask run





