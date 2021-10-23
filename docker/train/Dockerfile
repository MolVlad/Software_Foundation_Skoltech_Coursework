FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python2

COPY ../get-pip.py .

RUN python2 get-pip.py
RUN pip install torch==0.4 --no-cache-dir
RUN pip install future
RUN pip install torchnet
RUN pip install h5py
RUN pip install torchvision==0.2.2



