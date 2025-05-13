KBENCH_IPERF3_DOCKERFILE = kbench-iperf3.Dockerfile
IMAGE_REPO ?= localhost:5000
IMAGE_REPO := $(shell echo $(IMAGE_REPO) | tr '[:upper:]' '[:lower:]')
IMAGE_TAG ?= latest
IMAGE_NAME = $(IMAGE_REPO)/kbench-iperf3:$(IMAGE_TAG)

PHONY: build-kbench-iperf3 push-kbench-iperf3 all

all: build-kbench-iperf3 push-kbench-iperf3

build-kbench-iperf3:
	docker build -t $(IMAGE_NAME) -f $(KBENCH_IPERF3_DOCKERFILE) .

push-kbench-iperf3:
	docker push $(IMAGE_NAME)