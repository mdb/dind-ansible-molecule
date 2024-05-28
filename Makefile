IMAGE:=dind-ansible-molecule
all: build

build:
	docker build \
		--platform linux/amd64 \
		--progress plain \
		--tag $(IMAGE) .
.PHONY: build

compose:
	DOCKER_DEFAULT_PLATFORM=linux/amd64 \
  docker compose up \
  	--detach \
  	--wait

test: compose
	docker compose exec \
		dind-ansible-molecule \
		docker run bash echo "hello"
.PHONY: test

shell: compose
	docker exec \
		--privileged \
		--tty \
		--interactive \
		dind-ansible-molecule \
			/bin/bash
.PHONY: shell

down:
	docker compose down \
		--remove-orphans
.PHONY: down
