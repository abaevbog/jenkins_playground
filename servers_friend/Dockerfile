FROM ubuntu

USER root
WORKDIR /home/
COPY servers_friend.py .
ENV FLASK_APP=servers_friend.py 
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update && \ 
    apt install -y python3 python3-pip && \
    pip3 install flask && \
    pip3 install requests
EXPOSE 5000
CMD flask run


