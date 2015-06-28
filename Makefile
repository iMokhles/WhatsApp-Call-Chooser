GO_EASY_ON_ME = 1
TARGET=iphone:clang:latest:4.0
#ADDITIONAL_CFLAGS = -fobjc-arc

include theos/makefiles/common.mk

TWEAK_NAME = WhatsAppCallChooser
WhatsAppCallChooser_FILES = Tweak.xm
WhatsAppCallChooser_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WhatsApp"
