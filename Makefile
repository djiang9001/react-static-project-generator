IMAGE_NAME=react-static-website
# Starts a development container
dev:
	docker rmi $(IMAGE_NAME) || true
	docker build -t $(IMAGE_NAME) .
	docker run -it --rm -p 3000:3000 -v $$(pwd):/app $(IMAGE_NAME) /bin/sh || true
	docker rmi $(IMAGE_NAME) || true

# These commands are meant to be run inside of the dev container started above
start:
	cd /app && yarn start

build:
	cd /app && yarn build

serve:
	cd /app && yarn serve

stage:
	cd /app && yarn stage

