# This image build docker nightly binarys and copys them if you wish to your harddisk
# you need to bind your docker socket inside that image to build docker 


# usage:
    # This will Install Docker Binarys into /usr/bin/local if your docker sock is /var/run/docker.sock
    docker run -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/local:/target dockerimages/builddocker
