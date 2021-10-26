FROM ubuntu:latest

COPY docker/get-pip.py ./
COPY 3dmv/util.py 3dmv/data_util.py 3dmv/model.py 3dmv/enet.py 3dmv/projection.py 3dmv/train.py 3dmv/test.py ./files/

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	apt-get install -y vim && \

	pip install pylint==1.9.3

ENTRYPOINT mv files/* lint; pylint lint/*.py | tee lint/summary.txt
