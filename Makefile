test:
	PYTHONPATH=. pytest
docker-build:
	docker build -t mini-project .

docker-run:
	docker run --rm mini-project
