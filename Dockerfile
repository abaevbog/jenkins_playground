FROM ubuntu

USER root
WORKDIR /home/
COPY server.py .
ENV FLASK_APP=server.py 

RUN apt-get update && \ 
    apt install python3 python3-pip && \
    pip3 install flask 

CMD flask run





