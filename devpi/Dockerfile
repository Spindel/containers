FROM registry.gitlab.com/modioab/base-image/fedora-31/python:master

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

COPY ["requirements.txt", "launcher", "/opt/devpi/"]
COPY ["devpi-server.yml", "/etc/xdg/devpi-server/"]
RUN pip3 install -r /opt/devpi/requirements.txt && \
        mkdir /data

CMD ["/opt/devpi/launcher"]
