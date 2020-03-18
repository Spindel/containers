IMAGE_REPO = registry.gitlab.com/modioab/containers/zabbixui

IMAGE_FILES += timezone.ini
IMAGE_FILES += zabbix-release-4.0-2.el7.noarch.rpm

IMAGE_TEST_ARGS = -t --rm=true
IMAGE_TEST_CMD = /usr/bin/timeout --preserve-status 5 /usr/sbin/httpd -DFOREGROUND

include ../build.mk
