TARGET := iphone:clang:latest:7.0
# INSTALL_TARGET_PROCESSES = com.plexapp.plex, Plex
INSTALL_TARGET_PROCESSES = com.apple.springboard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PassPlex

PassPlex_FILES = Tweak.x
PassPlex_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
