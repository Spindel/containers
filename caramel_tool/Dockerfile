ARG IMAGE_BUILD_FROM
FROM $IMAGE_BUILD_FROM

ARG URL=unknown
ARG COMMIT=unknown
ARG BRANCH=unknown
ARG HOST=unknown
ARG DATE=unknown

LABEL "se.modio.ci.url"=$URL  "se.modio.ci.branch"=$BRANCH  "se.modio.ci.commit"=$COMMIT  "se.modio.ci.host"=$HOST  "se.modio.ci.date"=$DATE


ADD uglytool /usr/local/bin/uglytool
RUN pip install zope.sqlalchemy==1.1

ENTRYPOINT ["/usr/local/bin/uglytool"]
