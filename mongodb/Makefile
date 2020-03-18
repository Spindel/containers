IMAGE_REPO = registry.gitlab.com/modioab/containers/mongodb

IMAGE_FILES += mongod.conf

IMAGE_TEST_ARGS = -t --rm=true
IMAGE_TEST_CMD = /usr/bin/mongod --sysinfo

include ../build.mk
