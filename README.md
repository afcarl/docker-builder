docker-nightly-build
====================

Image that does a Nightly Build via Cron Job and does a push to the Docker Registry
standart is: dockerimages/docker-binary-amd64:nightly

you can do: docker run dockerimages/docker-nightly-build > bla.zip

## Updates:
- installer = if you run image with option install it will need mount point hostdir:/target and install docker binary into that folder (installer takes arguments for arch$!)

# Uploader will get own container!
- uploader = uploads the build to a ftp, ssh, git, s3, costum



* Futures:
* put cronjob.bash into your existing docker repository or a empty directory and cronjob it to run on Cron gitupdate and then build docker inside docker
* run the image and build docker insider the docker image with socks bound into it directly via volum.
