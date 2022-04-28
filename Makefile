IMAGE=docker-ci:tmp

all:

build:
	docker build --tag ${IMAGE} .

test:
	docker run --rm ${IMAGE} /app/test.sh
