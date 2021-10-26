FROM ubuntu:latest

COPY docker/get-pip.py 3dmv/util.py 3dmv/data_util.py 3dmv/model.py 3dmv/enet.py 3dmv/projection.py 3dmv/train.py docker/train/setup.py docker/train/unit_test.py docker/train/train.sh ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	pip install setuptools && \
	python2 setup.py install && \
	chmod +x train.sh


ENTRYPOINT ./train.sh


