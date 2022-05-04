
CONTAINER_NAME = react_hello_world

.PHONY: build
build:
	docker build --pull --rm -f "./frontend/Dockerfile" -t ${CONTAINER_NAME}:local "./frontend/."


.PHONY: run
run: build
	docker run --name ${CONTAINER_NAME} -p 3000:3000 -it ${CONTAINER_NAME}:local