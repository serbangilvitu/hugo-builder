FROM docker.io/alpine:3.12

RUN addgroup -S hugo && \
    adduser -S -g hugo hugo  && \
    apk add git hugo

USER hugo

WORKDIR /web

ENTRYPOINT ["/bin/ash"]