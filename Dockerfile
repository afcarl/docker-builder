FROM ubuntu:trusty
ENV VERSION nightly
# Install git and Make
RUN apt-get update && apt-get install -y -q \
    git make docker.io \
 && git clone https://github.com/docker/docker.git
ADD installer /
ADD builder /
ADD init-docker /
RUN chmod +x /run.sh /builder /installer /init-docker
CMD ["init-docker"]
