FROM scratch

ARG BRANCH=unknown
ARG COMMIT=unknown
ARG DATE=unknown
ARG HOST=unknown
ARG URL=unknown

LABEL "se.modio.ci.branch"=$URL \
      "se.modio.ci.commit"=$COMMIT \
      "se.modio.ci.date"=$DATE \
      "se.modio.ci.host"=$HOST \
      "se.modio.ci.url"=$URL

ADD rootfs.tar /

ENTRYPOINT ["/usr/bin/borg"]
