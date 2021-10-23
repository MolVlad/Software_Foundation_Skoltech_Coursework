FROM ubuntu:latest

COPY download.sh .

RUN apt-get update -y
RUN apt-get install -y wget
RUN apt-get install -y unzip

RUN chmod +x download.sh
ENTRYPOINT ./download.sh
