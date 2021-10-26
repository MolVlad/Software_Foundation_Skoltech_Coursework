FROM ubuntu:latest

COPY docker/get-pip.py docker/lint/lint.sh ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	apt-get install -y vim && \

	chmod +x lint.sh && \
	pip install pylint==1.9.3 yapf

ENTRYPOINT ./lint.sh
