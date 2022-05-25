
IMG ?= rubiklabs/airflow-worker:2.3.0-d1

# Build the docker image
docker-build:
	@echo
	@echo "=== docker build ==="
	docker build  --progress plain -f ./2/debian-10/Dockerfile ./2/debian-10 -t ${IMG}

# Push the docker image
docker-push:
	@echo
	@echo "=== docker push ==="
	docker push docker.io/${IMG}
