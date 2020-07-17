FROM docker.io/ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN groupadd -r hugo && \
  useradd -r -s /bin/false -g hugo hugo && \
  apt-get update && \
  apt-get -y install git hugo

USER hugo

WORKDIR /web

ENTRYPOINT ["/bin/bash"]