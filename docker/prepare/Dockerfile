FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python2

COPY docker/get-pip.py .
COPY prepare_data/prepare_2d_data.py .

RUN python2 get-pip.py
RUN pip install numpy
RUN pip install imageio==2.6
RUN pip install scikit-image

#RUN pip install setuptools
#RUN pip install opencv-python



