PROJECT := fkinuo-website
BUILD_TIME ?= $(shell date +%d.%m.%Y-%H%M)
GIT_COMMIT_HASH := $(shell git rev-parse --short HEAD)
REPO_STATUS := $(shell git diff --quiet && echo "origin" || echo "modified")
VERSION ?= $(GIT_COMMIT_HASH)-$(REPO_STATUS)@$(BUILD_TIME)
BUILD_NAME ?= $(PROJECT)-$(BUILD_TIME)

GO_MAIN := ""

RELEASE_LD_FLAGS := "-s -w -X main.version=$(VERSION)"
RELEASE_BUILD := CGO_ENABLED=0 go build -ldflags $(RELEASE_LD_FLAGS) -v

DOCKER_LD_FLAGS := "-s -w -X main.version=docker-$(VERSION)"
DOCKER_BUILD := CGO_ENABLED=0 go build -ldflags $(DOCKER_LD_FLAGS) -v

.PHONY: clean build-vite build-docker build-go

build: build-vite build-go

clean:
	rm -rf _build/ release/

build-vite:
	npm i
	npm run build

build-docker: build-vite
	$(DOCKER_BUILD) -o $(PROJECT) $(GO_MAIN)

build-go:
	$(RELEASE_BUILD) -o $(PROJECT) $(GO_MAIN)

