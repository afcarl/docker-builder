#!/bin/bash
echo "Ok building docker"
#cd /docker
#sleep 60
#docker.io build -t docker .
#docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
cd /go/src/github.com/docker/docker && git pull origin
#sed -i 's/^DOCKER_RUN_DOCKER :=.*/DOCKER_RUN_DOCKER :=/' /go/src/github.com/docker/docker/Makefile
hack/make.sh binary

