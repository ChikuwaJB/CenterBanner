ARCHS = armv7 arm64
THEOS_PACKAGE_DIR_NAME = Packages
GO_EASY_ON_ME = 1
include theos/makefiles/common.mk

TWEAK_NAME = CenterBanner
CenterBanner_FILES = Tweak.xm
CenterBanner_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
