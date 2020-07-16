FROM debian:buster
MAINTAINER "D.S. Ljungmark" <ljungmark@modio.se>

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

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 TERM=xterm

COPY zabbix-release_5.0-1+buster_all.deb /tmp
# It's important to add the policy before installing, so we dont get the debian packages
COPY files/policy /etc/apt/preferences.d/zabbix


RUN dpkg -i /tmp/zabbix-release_5.0-1+buster_all.deb  && \
    rm -f /tmp/zabbix-release_5.0-1+buster_all.deb  && \
    apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends locales && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen && \
    echo "sv_SE.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends nginx-light && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
        php7.3-pgsql \
        php7.3-fpm \
        php7.3-bcmath \
        php7.3-gd \
        php7.3-json \
        php7.3-ldap \
        php7.3-mbstring \
        php7.3-xml \
        php7.3 && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
        zabbix-frontend-php && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
        libfcgi-bin && \
    apt -y autoremove && \
    apt clean all && \
    rm -rf /var/lib/apt/lists/*

COPY files/etc/  /etc/
EXPOSE 8080/TCP
EXPOSE 9000/TCP

# user 33 == www-data
USER 33

# RUN /usr/sbin/php-fpm7.3 -t
# RUN /usr/sbin/nginx -t
