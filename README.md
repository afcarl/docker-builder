# BuildDocker
 This image builds docker nightly binarys and copys them if you wish to your harddisk

# usage:
 This will Install Docker Binarys into /usr/bin/local
 
 docker build -t docker https://github.com/docker/docker
 DOCKER_BUILD=$(docker run -d -rm --privileged=true docker /go/src/github.com/docker/docker/hack/make.sh binary)
 docker cp ${DOCKER_BUILD}:/go/src/github.com/docker/docker/bundles /target
 ls -ao /target
 
 docker run docker 

    DOCKER_BUILD=$(docker run --privileged=true -d -v /usr/bin/local:/target dockerimages/builddocker)
    
