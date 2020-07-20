FROM debian:buster

ARG URL=unknown
ARG COMMIT=unknown
ARG BRANCH=unknown
ARG HOST=unknown
ARG DATE=unknown

LABEL "se.modio.ci.url"=$URL        \
       "se.modio.ci.branch"=$BRANCH \
       "se.modio.ci.commit"=$COMMIT \
       "se.modio.ci.host"=$HOST     \
       "se.modio.ci.date"=$DATE     \
       "maintainer"="ljungmark@modio.se"


ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 TERM=xterm
COPY zabbix-release_5.0-1+buster_all.deb /tmp
# It's important to add the policy before installing, so we dont get the debian packages
COPY files/policy /etc/apt/preferences.d/zabbix
COPY files/non-free.list /etc/apt/sources.list.d/non-free.list


RUN dpkg -i /tmp/zabbix-release_5.0-1+buster_all.deb  && \
    rm -f /tmp/zabbix-release_5.0-1+buster_all.deb  && \
    apt-get -q update && \
    apt-get -qy install --no-install-recommends libsnmp-base snmp-mibs-downloader && \
    echo "Zeroing out snmp.conf to allow libsnmp to load mibs" && \
    truncate -s0 /etc/snmp/snmp.conf && \
    apt-get -qy install --no-install-recommends zabbix-server-pgsql && \
    apt -y autoremove && \
    apt clean all && \
    rm -rf /var/lib/apt/lists/*


EXPOSE 10051/TCP

WORKDIR /var/lib/zabbix
# user 101 == zabbix
USER 101
# CMD ["runuser", "-u", "zabbix", "--", "/usr/sbin/zabbix_server", "-f", "-c", "/etc/zabbix/zabbix_server.conf"]
