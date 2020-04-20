FROM registry.gitlab.com/modioab/base-image/fedora-31/container:master AS build

# Bacula 6.4.4, see https://www.bacula.org/source-download-center/
ARG version=9.4.4
RUN curl -LJ --remote-name-all \
        https://www.bacula.org/download/10065/ \
        https://www.bacula.org/download/10070/
RUN tar zxf bacula-sigs-${version}.tar.gz bacula-gui-${version}.tar.gz.sig

COPY Bacula-4096-Distribution-Verification-key.asc /
RUN gpg --import Bacula-4096-Distribution-Verification-key.asc \
    && gpg --verify bacula-gui-${version}.tar.gz.sig \
    && tar zxf bacula-gui-${version}.tar.gz

WORKDIR bacula-gui-${version}/baculum
RUN make DESTDIR=/webapp

FROM scratch

ARG URL=unknown
ARG COMMIT=unknown
ARG BRANCH=unknown
ARG HOST=unknown
ARG DATE=unknown

LABEL "se.modio.ci.url"=$URL        \
       "se.modio.ci.branch"=$BRANCH \
       "se.modio.ci.commit"=$COMMIT \
       "se.modio.ci.host"=$HOST     \
       "se.modio.ci.date"=$DATE

ADD rootfs.tar /
COPY --from=build /webapp /

ENTRYPOINT ["/usr/sbin/lighttpd"]
