.PHONY: build,

build:
	docker build -t kernellab .

run:
	docker run 3000:3000 kernellab