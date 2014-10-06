#!/bin/bash
echo "Ok building docker"
#cd /docker
#sleep 60
#docker.io build -t docker .
#docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
cd /go/src/github.com/docker/docker 
git remote remove origin
git remote add origin $DOCKER_GIT
git fetch origin && git reset --hard origin/$DOCKER_BRANCH
# && git pull origin
#sed -i 's/^DOCKER_RUN_DOCKER :=.*/DOCKER_RUN_DOCKER :=/' /go/src/github.com/docker/docker/Makefile
hack/make.sh binary

