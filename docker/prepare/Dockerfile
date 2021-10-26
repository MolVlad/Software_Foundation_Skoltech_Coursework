FROM ubuntu:latest

COPY docker/get-pip.py prepare_data/prepare_2d_data.py docker/prepare/setup.py ScanNet docker/prepare/unit_test.py docker/prepare/prepare.sh ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	pip install setuptools && \

	echo "Europe/Moscow" > /etc/timezone && \
	apt-get install libglib2.0-0 -y && \
	apt update && apt install -y libsm6 libxext6 && \
	apt-get install -y libxrender-dev && \

	python2 setup.py install && \
	chmod +x prepare.sh	

ENTRYPOINT ./prepare.sh
