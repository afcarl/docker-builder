#!/bin/bash
echo "Ok building docker"
#cd /docker
#sleep 60
#docker.io build -t docker .
#docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
/go/src/github.com/docker/docker/hack/make.sh binary
exit 0
