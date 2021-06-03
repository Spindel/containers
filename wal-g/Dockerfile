FROM docker.io/library/ubuntu:20.04 AS build
WORKDIR /

COPY get.sh /

RUN apt-get update && apt-get -y install curl grep bash && bash /get.sh

FROM docker.io/library/ubuntu:20.04
COPY --from=build /wal-g /usr/local/bin/wal-g
RUN /usr/local/bin/wal-g --version

CMD ["/usr/local/bin/wal-g"]
