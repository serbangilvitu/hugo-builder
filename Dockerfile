FROM docker.io/ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt -y install curl git hugo

ENTRYPOINT ["/bin/bash"]