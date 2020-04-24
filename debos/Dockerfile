FROM docker.io/godebos/debos:latest
# Above is maintained here https://github.com/go-debos/debos/blob/master/docker/Dockerfile

ARG URL=unknown
ARG COMMIT=unknown
ARG BRANCH=unknown
ARG HOST=unknown
ARG DATE=unknown

LABEL "se.modio.ci.url"=$URL  "se.modio.ci.branch"=$BRANCH  "se.modio.ci.commit"=$COMMIT  "se.modio.ci.host"=$HOST  "se.modio.ci.date"=$DATE

RUN apt-get update && \
    apt-get -y install make squashfs-tools zstd && \
    apt-get -y upgrade && \
    rm -rf -- /var/lib/apt/lists/*

ENTRYPOINT []
