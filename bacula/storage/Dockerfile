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
RUN mkdir -p /usr/lib64/bacula

EXPOSE 9103
ENTRYPOINT ["/usr/sbin/bacula-sd"]
CMD ["-fvP"]
