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
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) download

run_prepare:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) prepare

run_train:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) train

run_eval:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -u $(shell id -u ${USER}):$(shell id -g ${USER}) eval

run_lint:
	mkdir -p $(LINTED_DIR)
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint lint
	


run_fix:
	mkdir -p $(LINTED_DIR)
	docker run -it -v $(shell pwd)/$(LINTED_DIR):/lint --entrypoint=bash lint



run_download_debug:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash download

run_prepare_debug:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash prepare

run_train_debug:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash train

run_eval_debug:
	mkdir -p $(DATA_DIR)
	docker run -it -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data -v $(shell pwd)/$(DATA_DIR):/data --entrypoint=bash eval

run_lint_debug:
	mkdir -p $(LINTED_DIR)
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


