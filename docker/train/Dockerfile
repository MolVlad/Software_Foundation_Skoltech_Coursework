FROM ubuntu:latest

COPY docker/get-pip.py 3dmv/util.py 3dmv/data_util.py 3dmv/model.py 3dmv/enet.py 3dmv/projection.py 3dmv/train.py ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	pip install numpy && \
	pip install torch==0.4 --no-cache-dir && \
	pip install torchvision==0.2.2 && \
	pip install torchnet && \
	pip install h5py

ENTRYPOINT python2 train.py


