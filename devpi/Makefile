IMAGE_REPO = registry.gitlab.com/modioab/containers/devpi

IMAGE_FILES += requirements.txt
IMAGE_FILES += launcher
IMAGE_FILES += devpi-server.yml

IMAGE_TEST_ARGS = -t --rm=true
IMAGE_TEST_CMD = /usr/local/bin/devpi-server --version

include ../build.mk
