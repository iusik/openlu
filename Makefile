build:
	docker build -t iusik/openlu ./docker/openresty
push:
	docker push iusik/openlu