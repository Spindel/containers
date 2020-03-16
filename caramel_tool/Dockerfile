FROM registry.gitlab.com/modioab/containers/caramel:master

ARG URL=unknown
ARG COMMIT=unknown
ARG BRANCH=unknown
ARG HOST=unknown
ARG DATE=unknown

LABEL "se.modio.ci.url"=$URL  "se.modio.ci.branch"=$BRANCH  "se.modio.ci.commit"=$COMMIT  "se.modio.ci.host"=$HOST  "se.modio.ci.date"=$DATE


ADD uglytool /usr/local/bin/uglytool

ENTRYPOINT ["/usr/local/bin/uglytool"]
