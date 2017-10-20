# Copyright (C) 2017 Pure Fusion OS
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

# ROM Statistics
PRODUCT_PACKAGES += \
    FusionStats

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
    vendor/pure/prebuilt/etc/init.fusion.rc:root/init.fusion.rc

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# PureFusionOS OTA
#$(call inherit-product-if-exists, vendor/pure/configs/ota.mk)

# Allow recording ADB logcat during boot phase
PRODUCT_PROPERTY_OVERRIDES += \
		 ro.adb.secure=0 \
		 ro.secure=0 \
		 persist.service.adb.enable=1

ifeq ($(TARGET_USES_SNAP_CAMERA),true)
PRODUCT_PACKAGES += \
    SnapdragonCamera
endif

# Enable AptX and AptX HD bluetooth codecs
ifeq ($(APTX_HD),true)
PRODUCT_COPY_FILES += \
     vendor/pure/prebuilt/lib/libaptX_encoder.so:system/lib/libaptX_encoder.so \
     vendor/pure/prebuilt/lib/libaptXHD_encoder.so:system/lib/libaptXHD_encoder.so \
     vendor/pure/prebuilt/lib64/libaptX_encoder.so:system/lib64/libaptX_encoder.so \
     vendor/pure/prebuilt/lib64/libaptXHD_encoder.so:system/lib64/libaptXHD_encoder.so

PRODUCT_PROPERTY_OVERRIDES += \
     persist.bt.enableAptXHD=true
endif
