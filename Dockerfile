FROM ubuntu:latest
RUN apt-get -y update
COPY /home/ubuntu/docker/text.txt .
