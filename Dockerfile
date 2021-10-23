FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python2

#RUN apt-get install -y python-pip python-dev build-essential
#RUN apt-get install -y python2.7
#RUN apt-get install -y python2-pip
#RUN pip install torch
