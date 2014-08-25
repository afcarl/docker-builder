#!/bin/bash
        echo "Ok building docker"
        cd /docker
        sleep 60
        docker.io build -t docker .
        #docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
        DOCKER_BUILD=$(docker run -d -rm --privileged=true docker /go/src/github.com/docker/docker/hack/make.sh binary)
        docker cp ${DOCKER_BUILD}:/go/src/github.com/docker/docker/bundles /target
        ls -ao /target
        echo "Done" 
