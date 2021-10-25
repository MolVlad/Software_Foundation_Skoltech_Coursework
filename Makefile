# change to just "data"
DATA_DIR = data

r_download:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) download

r_prepare:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) prepare

r_train:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) train

r_eval:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) eval



b_download:
	docker build . --file=docker/download/Dockerfile -t download

b_prepare:
	docker build . --file=docker/prepare/Dockerfile -t prepare

b_train:
	docker build . --file=docker/train/Dockerfile -t train

b_eval:
	docker build . --file=docker/eval/Dockerfile -t eval



c_all: c_container c_volume c_image c_kill

c_kill:
	docker kill $(shell docker ps -q)

c_container:
	docker rm -f $(shell docker ps -a -q)

c_volume:
	docker volume rm $(shell docker volume ls -q)

c_image:
	docker image prune -a


