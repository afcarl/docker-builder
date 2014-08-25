#!/bin/bash
        echo "Ok building docker"
        cd /docker
        sleep 60
        docker.io build -t docker .
        docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
        echo "Done" 
