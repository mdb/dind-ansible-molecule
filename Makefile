IMAGE:=dind-ansible-molecule
CONTAINER=dind
NETWORK=dind-ansible-molecule_dam
all: build

build:
	docker build \
		--platform linux/amd64 \
		--tag $(IMAGE) .
.PHONY: build

run:
	docker run \
		--name "$(CONTAINER)" \
		--platform linux/amd64 \
		--privileged \
		--tty \
		--interactive \
		--rm \
		"$(IMAGE)"
.PHONY: run

test:
	docker exec \
		--tty \
		--interactive \
		"$(CONTAINER)" docker run bash echo "hello"
.PHONY: test

test2:
	docker run \
		--platform linux/amd64 \
		--tty \
		--rm \
		--interactive \
		--network $(NETWORK) \
		"docker:latest" sh
.PHONY: test2


shell:
	docker exec \
		--privileged \
		--tty \
		--interactive \
		"$(CONTAINER)" \
			/bin/bash
.PHONY: shell

clean:
	docker rm $(CONTAINER)
.PHONY: clean
