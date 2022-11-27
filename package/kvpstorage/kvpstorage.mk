################################################################################
#
# kvpstorage
#
################################################################################
KVPSTORAGE_VERSION = v0.1.2
KVPSTORAGE_SOURCE = kvpstorage-$(KVPSTORAGE_VERSION).tar.gz
KVPSTORAGE_SITE = $(call github,Feupos,key_value_pair_storage,$(KVPSTORAGE_VERSION))
KVPSTORAGE_INSTALL_STAGING = YES
KVPSTORAGE_INSTALL_TARGET = YES
KVPSTORAGE_SUPPORTS_IN_SOURCE_BUILD = NO
KVPSTORAGE_CONF_OPTS = -DKVPStorage_ENABLE_UNIT_TESTING=OFF
#KVPSTORAGE_DEPENDENCIES = libglib2 host-pkgconf
KVPSTORAGE_DEPENDENCIES = json-for-modern-cpp boost-system
$(eval $(cmake-package))