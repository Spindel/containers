IMAGE_REPO = registry.gitlab.com/modioab/containers/debos


IMAGE_TEST_ARGS = --privileged -v $(CURDIR):/work:rw --workdir /work
IMAGE_TEST_CMD = debos test.yaml

include ../build.mk
