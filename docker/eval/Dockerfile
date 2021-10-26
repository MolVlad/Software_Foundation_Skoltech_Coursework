FROM ubuntu:latest

COPY docker/get-pip.py 3dmv/util.py 3dmv/data_util.py 3dmv/model.py 3dmv/enet.py 3dmv/projection.py 3dmv/test.py docker/eval/setup.py docker/eval/untest.py docker/eval/test.sh ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	pip install setuptools && \
	python2 setup.py install && \
	chmod +x test.sh 
	#python2 untest.py 


ENTRYPOINT ./test.sh



