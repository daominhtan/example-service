build-amd:
	docker build -t  ghcr.io/daominhtan/example-service:v2 .
push-amd:
	docker push ghcr.io/daominhtan/example-service:v2

build-armv7l:
	docker build -t  ghcr.io/daominhtan/example-service:v2-armv7l .
push-armv7l:
	docker push ghcr.io/daominhtan/example-service:v2-armv7l