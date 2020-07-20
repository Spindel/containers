IMAGE_REPO = registry.gitlab.com/modioab/containers/zabbixui

IMAGE_FILES += files/policy
IMAGE_FILES += zabbix-release_5.0-1+buster_all.deb
IMAGE_FILES += files/etc/nginx/nginx.conf
IMAGE_FILES += files/etc/php/7.3/fpm/php-fpm.conf

IMAGE_TEST_ARGS = -t --rm=true
IMAGE_TEST_CMD = sh -c '/usr/sbin/nginx -t && /usr/sbin/php-fpm7.3 -t'

include ../build.mk
