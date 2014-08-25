# BuildDocker
 This image builds docker nightly binarys and copys them if you wish to your harddisk

# usage:
 This will Install Docker Binarys into /usr/bin/local

    DOCKER_BUILD=$(docker run --privileged=true -d -v /usr/bin/local:/target dockerimages/builddocker)
    
