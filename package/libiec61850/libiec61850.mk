################################################################################
#
# libiec61850
#
################################################################################

LIBIEC61850_VERSION = 951b138d5e40a4f15868e0f5b70369f9fd154c06
LIBIEC61850_SITE = $(call github,gdalbeniz,libiec61850,$(LIBIEC61850_VERSION))
LIBIEC61850_LICENSE = GPL-3.0
LIBIEC61850_LICENSE_FILES = COPYING
LIBIEC61850_INSTALL_STAGING = YES
LIBIEC61850_INSTALL_TARGET = NO


LIBIEC61850_CONF_OPTS = -DBUILD_EXAMPLES=ON
# 	-DINSTALL_SYSCONFDIR=/etc/monkey \
# 	-DINSTALL_WEBROOTDIR=/var/www \
# 	-DWITH_SYSTEM_MALLOC=1

# define LIBIEC61850_BUILD_CMDS
# 	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) \
# 		$(TARGET_CONFIGURE_OPTS) all
# endef

# define LIBIEC61850_INSTALL_TARGET_CMDS

# $(ECHO) ----------------****************----------------*********************-----------------------------

# $(TARGET_MAKE_ENV) $(MAKE) -C $(@D) \
# 		$(TARGET_CONFIGURE_OPTS) examples

# # 	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) install $(TARGET_CONFIGURE_OPTS) \
# # 		VERSION=$(LIBIEC61850_VERSION) MANS= \
# # 		DESTDIR="$(TARGET_DIR)" PREFIX=/usr
# endef

ifeq ($(BR2_PACKAGE_LIBIEC61850_EXAMPLES),y)
	#LIBIEC61850_CONF_OPTS += -DBUILD_EXAMPLES=ON

	LIBIEC61850_INSTALL_TARGET = YES
#LIBIEC61850_DEPENDENCIES += mbedtls
endif

$(eval $(cmake-package))
