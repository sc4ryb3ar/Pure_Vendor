#
# Copyright (C) 2017 The LineageOS Open Source Project
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
#

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/motorola/nash/nash.mk)

# Inherit some common DU stuff.
$(call inherit-product, vendor/pure/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/nash/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_nash
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := nash
PRODUCT_MODEL := Moto Z (2)
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=nash PRODUCT_NAME=nash

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=motorola/nash/nash:7.1.1/NCX26.122-49/51:user/release-keys

TARGET_VENDOR := motorola
