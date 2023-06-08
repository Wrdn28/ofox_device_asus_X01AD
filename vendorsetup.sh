#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2021 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="X01AD"
add_lunch_combo omni_"$FDEVICE"-eng
add_lunch_combo omni_"$FDEVICE"-userdebug
export OF_TARGET_DEVICES="X01A,X01AD,ASUS_X01A_1,X01A_1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_USE_NANO_EDITOR=1
export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
export ALLOW_MISSING_DEPENDENCIES=true
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export OF_FLASHLIGHT_ENABLE=0
export OF_SCREEN_H=2280
#export OF_FL_PATH1="/sys/class/leds/led:torch_1"
export OF_USE_TWRP_SAR_DETECT=1
export OF_NO_MIUI_PATCH_WARNING=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export FOX_USE_NANO_EDITOR=1
export OF_CLASSIC_LEDS_FUNCTION=1
export OF_MAINTAINER="Hirokixd28"
export LC_ALL="C"
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_PATCH_AVB20=1
export OF_NO_SPLASH_CHANGE=1
export OF_USE_SYSTEM_FINGERPRINT=1
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
#let's log what are the build VARs that we used
if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	export | grep "FOX" >>$FOX_BUILD_LOG_FILE
	export | grep "OF_" >>$FOX_BUILD_LOG_FILE
	export | grep "ALLOW" >>$FOX_BUILD_LOG_FILE
	export | grep "LC_" >>$FOX_BUILD_LOG_FILE
fi
