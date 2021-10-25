FROM ubuntu:latest

COPY docker/get-pip.py prepare_data/prepare_2d_data.py ScanNet ./

RUN apt-get update -y && \
	apt-get install -y python2 && \
	python2 get-pip.py && \
	pip install numpy && \
	pip install imageio==2.6 && \
	pip install scikit-image && \
	pip install opencv-python==4.2.0.32 && \
	echo "Europe/Moscow" > /etc/timezone && \
	apt-get install libglib2.0-0 -y && \
	apt update && apt install -y libsm6 libxext6 && \
	apt-get install -y libxrender-dev && \
	pip install pypng

ENTRYPOINT python2 prepare_2d_data.py --scannet_path data/scannetv2 --output_path data/scannetv2_images

