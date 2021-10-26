DATA_DIR = data
LINTED_DIR = lint
PREPARE_FLAGS="--scannet_path data/scannetv2 --output_path data/scannetv2_images --export_label_images"	
TRAIN_FLAGS="--help"
EVAL_FLAGS="--help"

hub_download:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data dmasny/fse_project:download

hub_prepare:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data dmasny/fse_project:prepare

hub_train:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --gpus all dmasny/fse_project:train

hub_eval:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --gpus all dmasny/fse_project:eval

hub_lint:
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint dmasny/fse_project:lint



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
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --env PREPARE_FLAGS=$(PREPARE_FLAGS) prepare

run_train:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --gpus all --env TRAIN_FLAGS=$(TRAIN_FLAGS) train

run_eval:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --gpus all --env EVAL_FLAGS=$(EVAL_FLAGS) eval

run_lint:
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint lint
	


run_download_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash download

run_prepare_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash prepare

run_train_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --gpus all --entrypoint=bash train

run_eval_debug:
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --gpus all --entrypoint=bash eval

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


