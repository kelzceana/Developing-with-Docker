# Variables
IMAGE_NAME=myapp
IMAGE_TAG=1.1

say_hello:
	@echo "Hello World"

.PHONY: stop-docker

# Bring running images down
docker-down:
	docker ps -q | xargs -r docker stop

# Build the Docker image
.PHONY: build
build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .