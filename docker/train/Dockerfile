FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python2

COPY docker/get-pip.py . 
COPY 3dmv/util.py .
COPY 3dmv/data_util.py .
COPY 3dmv/model.py .
COPY 3dmv/enet.py .
COPY 3dmv/projection.py .
COPY 3dmv/train.py .

RUN python2 get-pip.py
RUN pip install numpy
RUN pip install torch==0.4 --no-cache-dir
RUN pip install torchvision==0.2.2
RUN pip install torchnet
RUN pip install h5py

ENTRYPOINT python2 train.py


