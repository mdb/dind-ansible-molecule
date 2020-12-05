.PHONY: build

all: build

build:
	docker build \
		--tag dind-ansible-molecule .
