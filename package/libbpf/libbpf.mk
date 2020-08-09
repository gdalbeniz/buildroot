################################################################################
#
# libbpf
#
################################################################################

LIBBPF_VERSION = 51fd662abd9ae58cef32dcf03561af7d937aab23
LIBBPF_SITE = $(call github,gdalbeniz,libbpf,$(LIBBPF_VERSION))
LIBBPF_LICENSE = GPL-2.0-only
LIBBPF_LICENSE_FILES = README.md
# LIBBPF_INSTALL_STAGING = YES
# LIBBPF_INSTALL_TARGET = NO




$(eval $(cmake-package))