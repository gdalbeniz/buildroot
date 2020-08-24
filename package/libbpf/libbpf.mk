################################################################################
#
# libbpf
#
################################################################################

LIBBPF_VERSION = c2711197fde9f3e70458102685dfe4e7478e703c
LIBBPF_SITE = $(call github,gdalbeniz,libbpf,$(LIBBPF_VERSION))
LIBBPF_LICENSE = GPL-2.0-only
LIBBPF_LICENSE_FILES = README.md
# LIBBPF_INSTALL_STAGING = YES
LIBBPF_INSTALL_TARGET = YES
LIBBPF_DEPENDENCIES = libiec61850



$(eval $(cmake-package))