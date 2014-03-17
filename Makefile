TWEAK_NAME = HiddenWallpapers
HiddenWallpapers_OBJCC_FILES = Tweak.mm

IP_ADDRESS=10.0.1.13
IP_ADDRESS2=127.0.0.1
IP_ADDRESS3=10.0.1.21
HiddenWallpapers_CFLAGS = -F$(SYSROOT)/System/Library/CoreServices
HiddenWallpapers_FRAMEWORKS = Foundation UIKit
HiddenWallpapers_PRIVATE_FRAMEWORKS = SpringBoardFoundation
TARGET = :clang::7.0
ARCHS = armv7 arm64
include theos/makefiles/common.mk
include theos/makefiles/tweak.mk

sync: stage
	rsync -z _/Library/MobileSubstrate/DynamicLibraries/* root@$(IP_ADDRESS):/Library/MobileSubstrate/DynamicLibraries/
	ssh root@$(IP_ADDRESS) killall Preferences
	
sync2: stage
	rsync -e "ssh -p 2222" -z _/Library/MobileSubstrate/DynamicLibraries/* root@127.0.0.1:/Library/MobileSubstrate/DynamicLibraries/
	ssh root@127.0.0.1 -p 2222 killall Preferences