IMAGE_NAME=react-static-website
# Starts a development container
dev:
	docker rmi $(IMAGE_NAME) || true
	docker build -t $(IMAGE_NAME) .
	docker run -it --rm -p 3000:3000 -v $$(pwd):/app $(IMAGE_NAME) /bin/sh || true
	docker rmi $(IMAGE_NAME) || true

# These commands are meant to be run inside of the dev container started above
start: check-env
	cd /app && yarn start

build: check-env
	cd /app && yarn build

serve: check-env
	cd /app && yarn serve

stage: check-env
	cd /app && yarn stage

# Check if we are in a docker container.
check-env:
ifndef AM_I_IN_A_DOCKER_CONTAINER
	$(error must run make target in docker container. Please run make dev.)
endif