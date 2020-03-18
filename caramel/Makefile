IMAGE_REPO = registry.gitlab.com/modioab/containers/caramel

IMAGE_FILES += container.ini
IMAGE_FILES += launcher

IMAGE_TEST_ARGS = -t --rm=true
IMAGE_TEST_CMD = /usr/local/bin/pviews /srv/webapp/container.ini /root.crt

include ../build.mk
