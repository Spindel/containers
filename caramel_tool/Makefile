IMAGE_REPO = registry.gitlab.com/modioab/containers/caramel_tool

IMAGE_BUILD_FROM ?= registry.gitlab.com/modioab/containers/caramel:master
IMAGE_FILES += uglytool

IMAGE_TEST_ARGS = -t --rm=true
IMAGE_TEST_CMD = --help

include ../build.mk
