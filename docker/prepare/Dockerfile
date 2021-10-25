FROM ubuntu:latest

COPY docker/get-pip.py prepare_data/prepare_2d_data.py ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	pip install numpy && \
	pip install imageio==2.6 && \
	pip install scikit-image

#RUN pip install setuptools
#RUN pip install opencv-python

ENTRYPOINT python2 prepare_2d_data.py

