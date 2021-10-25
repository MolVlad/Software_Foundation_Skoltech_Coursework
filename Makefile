r_download:
	docker run -v $(pwd)/data:/data download

r_prepare:
	docker run -v $(pwd)/data:/data prepare

r_train:
	docker run -v $(pwd)/data:/data -v $(pwd)/train:/train train

r_eval:
	docker run -v $(pwd)/data:/data -v $(pwd)/train:/train -v $(pwd)/eval:/eval eval

b_download:
	docker build . --file=docker/download/Dockerfile -t download
	mkdir -p data

b_prepare:
	docker build . --file=docker/prepare/Dockerfile -t prepare

b_train:
	docker build . --file=docker/train/Dockerfile -t train
	mkdir -p train

b_eval:
	docker build . --file=docker/eval/Dockerfile -t eval
	mkdir -p eval

c_all: c_kill c_container c_volume c_image

c_kill:
	docker kill $(docker ps -q)

c_container:
	docker rm -f $(docker ps -a -q)

c_volume:
	docker volume rm $(docker volume ls -q)

c_image:
	docker image prune -a


