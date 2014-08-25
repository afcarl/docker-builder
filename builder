#!/bin/bash
if mountpoint -q /var/run/docker.sock; then 
        echo "Ok building docker"
        cd /docker
        docker.io build -t docker .
        docker.io run --name nightly-build --privileged docker hack/make.sh binary cross
        echo "Done" 
	else 
        echo "/var/run/docker.sock is not a mountpoint." \
        echo "- re-run this container with -v /var/run/docker.sock:/var/run/docker.sock" \
        exit 1 
fi

