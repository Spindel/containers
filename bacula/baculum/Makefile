IMAGE_REPO = registry.gitlab.com/modioab/containers/bacula/baculum

FEDORA_ROOT_ARCHIVE = rootfs.tar
IMAGE_FILES += $(FEDORA_ROOT_ARCHIVE)

# Direct dependencies
FEDORA_ROOT_PACKAGES += bacula-console
FEDORA_ROOT_PACKAGES += php-pgsql
FEDORA_ROOT_PACKAGES += php-pdo
FEDORA_ROOT_PACKAGES += php-xml
FEDORA_ROOT_PACKAGES += php-bcmath
FEDORA_ROOT_PACKAGES += php-json
FEDORA_ROOT_PACKAGES += php-curl
FEDORA_ROOT_PACKAGES += php-mbstring

# Indirect dependencies
FEDORA_ROOT_PACKAGES += lighttpd
FEDORA_ROOT_PACKAGES += lighttpd-fastcgi
FEDORA_ROOT_PACKAGES += php-cli

include ../../build.mk
