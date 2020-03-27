FROM ubuntu

USER root
WORKDIR /home/
COPY server.py .
ENV FLASK_APP=server.py 

RUN apt-get update && \ 
    pip3 install flask 

CMD flask run





