FROM centos:7

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

COPY zabbix-release-4.0-2.el7.noarch.rpm /tmp
RUN rpm -Uvh /tmp/zabbix-release-4.0-2.el7.noarch.rpm  && \
    yum clean all && \
    yum install -y httpd && \
    yum install -y mod_ssl && \
    yum install -y zabbix-web-pgsql && \
    chown root:apache /etc/zabbix/web && \
    yum clean all && \
    rm -f /tmp/zabbix-release-4.0-2.el7.noarch.rpm

COPY timezone.ini /etc/php.d/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
