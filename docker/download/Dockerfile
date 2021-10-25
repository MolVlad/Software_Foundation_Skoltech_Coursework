FROM ubuntu:latest

COPY docker/download/download.sh .

RUN apt-get update -y && \
	apt-get install -y wget && \
	apt-get install -y unzip && \
	chmod +x download.sh

ENTRYPOINT ./download.sh

