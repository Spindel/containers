FROM registry.gitlab.com/modioab/base-image/fedora-29/python:master

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

COPY container.ini /srv/webapp/container.ini
COPY launcher /srv/webapp
ENV PGPASSFILE /data/db/pgpass


RUN cd /srv/webapp       && \
    pip3 install gunicorn psycopg2-binary caramel && \
    mkdir /data

WORKDIR /data
CMD ["/srv/webapp/launcher"]
