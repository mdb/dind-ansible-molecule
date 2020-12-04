.PHONY: build

all: build

build:
	docker build \
		--tag clapclapexcitement/dind-ansible-molecule .
