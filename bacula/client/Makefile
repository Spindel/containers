IMAGE_REPO = registry.gitlab.com/modioab/containers/bacula/client

FEDORA_ROOT_ARCHIVE = rootfs.tar
IMAGE_FILES += $(FEDORA_ROOT_ARCHIVE)

FEDORA_ROOT_PACKAGES += https://kojipkgs.fedoraproject.org//packages/bacula/9.6.7/1.fc33/x86_64/bacula-libs-9.6.7-1.fc33.x86_64.rpm
FEDORA_ROOT_PACKAGES += https://kojipkgs.fedoraproject.org//packages/bacula/9.6.7/1.fc33/x86_64/bacula-common-9.6.7-1.fc33.x86_64.rpm
FEDORA_ROOT_PACKAGES += https://kojipkgs.fedoraproject.org//packages/bacula/9.6.7/1.fc33/x86_64/bacula-client-9.6.7-1.fc33.x86_64.rpm

include ../../build.mk
