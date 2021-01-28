IMAGE_REPO = registry.gitlab.com/modioab/containers/pgbackup

FEDORA_ROOT_ARCHIVE = rootfs.tar
POSTGRES_RELEASE = https://download.postgresql.org/pub/repos/yum/reporpms/F-$(FEDORA_ROOT_RELEASE)-x86_64/pgdg-fedora-repo-latest.noarch.rpm

IMAGE_FILES += backitup
IMAGE_FILES += /etc/yum.repos.d/pgdg-fedora-all.repo
IMAGE_FILES += $(FEDORA_ROOT_ARCHIVE)


ifneq ($(CI),)
/etc/yum.repos.d/pgdg-fedora-all.repo:
	dnf install -y $(POSTGRES_RELEASE)
endif


# This might be slightly hacky. Don't tell anyone.
#
FEDORA_ROOT_PACKAGES = --enablerepo=pgdg13
FEDORA_ROOT_PACKAGES += postgresql13
FEDORA_ROOT_PACKAGES += openssh-clients
FEDORA_ROOT_PACKAGES += rsync
FEDORA_ROOT_PACKAGES += zstd
# The server package includes the "verify"  backup tools. not included right now.
# FEDORA_ROOT_PACKAGES += postgresql13-server

include ../build.mk
