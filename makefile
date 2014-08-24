name = spike
lib = ./dockerfiles

dockerfile: $(lib)/*.m4
	m4 -I $(lib) $(lib)/Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build --rm -t $(name) .

bash:
	docker run -i -t -e DOCKER_HOST=tcp://192.168.50.4:2375 $(name) bash
