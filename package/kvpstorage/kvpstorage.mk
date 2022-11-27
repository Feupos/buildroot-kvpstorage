################################################################################
#
# kvpstorage
#
################################################################################
KVPSTORAGE_VERSION = v0.1.3
KVPSTORAGE_SOURCE = kvpstorage-$(KVPSTORAGE_VERSION).tar.gz
KVPSTORAGE_SITE = $(call github,Feupos,key_value_pair_storage,$(KVPSTORAGE_VERSION))
KVPSTORAGE_INSTALL_STAGING = YES
KVPSTORAGE_INSTALL_TARGET = YES
KVPSTORAGE_SUPPORTS_IN_SOURCE_BUILD = NO
KVPSTORAGE_CONF_OPTS = -DKVPStorage_ENABLE_UNIT_TESTING=OFF -DKVPStorage_BUILD_EXECUTABLE=ON
KVPSTORAGE_DEPENDENCIES = json-for-modern-cpp boost
$(eval $(cmake-package))