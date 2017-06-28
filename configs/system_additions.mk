# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/pure/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/pure/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/pure/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/pure/prebuilt/bin/sysinit:system/bin/sysinit

# Pure-specific init file
PRODUCT_COPY_FILES += \
    vendor/pure/prebuilt/etc/init.purenexus.rc:root/init.purenexus.rc

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1
    
#ifneq ($(TARGET_BUILD_VARIANT),eng)
## Enable ADB authentication
#ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
#endif   

# Set cache location
ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.device.cache_dir=/data/cache
else
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.device.cache_dir=/cache
endif

# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false

# PureNexus OTA
PRODUCT_PACKAGES += \
    PureOTA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.build.date=$(shell date +%Y%m%d_%H%M%S)

# Speed up compiling time
EXCLUDE_SYSTEMUI_TESTS := true
