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

IS_ARM64 := true

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for ido
$(call inherit-product, device/xiaomi/ido/aosp_ido.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ido
PRODUCT_NAME := ido
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 3
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/ido/ido:5.1.1/LMY47V/V8.1.3.0.LAIMIDI:user/release-keys" \
    PRIVATE_BUILD_DESC="ido-user 5.1.1 LMY47V V8.1.3.0.LAIMIDI release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.manifest=https://raw.githubusercontent.com/PureNexusProject-Mod/OTA_server/master/ido.json
