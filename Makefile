.PHONY: build run push

IMAGE_NAME = kernellab
REGISTRY_IMAGE = dbouraoui/kernellab
VERSION ?= latest

build:
	docker build -t $(IMAGE_NAME):$(VERSION) .

run:
	docker run -p 3000:3000 $(IMAGE_NAME):$(VERSION)

push:
	docker tag $(IMAGE_NAME):$(VERSION) $(REGISTRY_IMAGE):$(VERSION)
	docker push $(REGISTRY_IMAGE):$(VERSION)
