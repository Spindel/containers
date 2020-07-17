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
COPY files/non-free.list /etc/apt/sources.list.d/non-free.list


RUN dpkg -i /tmp/zabbix-release_5.0-1+buster_all.deb  && \
    rm -f /tmp/zabbix-release_5.0-1+buster_all.deb  && \
    apt-get -q update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends locales && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen && \
    echo "sv_SE.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen && \
    apt-get -qy install --no-install-recommends libsnmp-base && \
    echo "Zeroing out snmp.conf to allow libsnmp to load mibs" && \
    truncate -s0 /etc/snmp/snmp.conf && \
    echo "Downloading snmp MIB files" && \
    apt-get -qy install --no-install-recommends snmp-mibs-downloader && \
    apt-get -qy install --no-install-recommends zabbix-server-pgsql && \
    apt -y autoremove && \
    apt clean all && \
    rm -rf /var/lib/apt/lists/*


EXPOSE 10051/TCP

WORKDIR /var/lib/zabbix
# user 101 == zabbix
USER 101
# CMD ["runuser", "-u", "zabbix", "--", "/usr/sbin/zabbix_server", "-f", "-c", "/etc/zabbix/zabbix_server.conf"]
