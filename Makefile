NAME=nordicdyno/jq-build
TAG=1.0

all: build
	docker run --rm ${NAME} cat /root/jq/jq > jq
	chmod +x jq

build:
	docker build --force-rm=true -t ${NAME}:${TAG} .
	docker tag ${NAME}:${TAG} ${NAME}:latest
