FROM ubuntu:trusty
ENV VERSION nightly
# Install git and Make
RUN apt-get update && apt-get install -y -q \
    git make docker.io \
 && git clone https://github.com/docker/docker.git
COPY installer /
COPY builder /
COPY run /
CMD ["run"]
