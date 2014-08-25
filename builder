#!/bin/bash
        echo "Ok building docker"
        cd /docker
        docker.io build -t docker .
        docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
        echo "Done" 
