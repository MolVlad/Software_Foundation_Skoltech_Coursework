FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python2
COPY get-pip.py .
RUN python2 get-pip.py

#RUN pip install torch
