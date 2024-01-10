FINALPACKAGE=1
THEOS_PACKAGE_SCHEME=rootless
ARCHS = arm64 arm64e
TARGET := iphone:clang:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FxxkHapticTouch
FxxkHapticTouch_FILES = Tweak.xm
FxxkHapticTouch_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
include $(THEOS_MAKE_PATH)/aggregate.mk
