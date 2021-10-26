# change to just "data"
DATA_DIR = ../data
LINTED_DIR = lint

build_download:
	docker build . --file=docker/download/Dockerfile -t download

build_prepare:
	docker build . --file=docker/prepare/Dockerfile -t prepare

build_train:
	docker build . --file=docker/train/Dockerfile -t train

build_eval:
	docker build . --file=docker/eval/Dockerfile -t eval

build_lint:
	docker build . --file=docker/lint/Dockerfile -t lint



run_download:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data download

run_prepare:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data prepare

run_train:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data --gpus all train

run_eval:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data --gpus all eval

run_lint:
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint lint
	


run_fix:
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint --entrypoint=bash lint



run_download_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash download

run_prepare_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash prepare

run_train_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data --gpus all --entrypoint=bash train

run_eval_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data --gpus all --entrypoint=bash eval

run_lint_debug:
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint --entrypoint=bash lint



clean_all: clean_container clean_volume clean_image clean_kill

clean_kill:
	docker kill $(shell docker ps -q)

clean_container:
	docker rm -f $(shell docker ps -a -q)

clean_volume:
	docker volume rm $(shell docker volume ls -q)

clean_image:
	docker image prune -a


