FROM ubuntu

USER root
WORKDIR /home/
COPY server.py .
ENV FLASK_APP=server.py 

RUN apt-get update && \ 
    apt-get install flask 

CMD flask run





