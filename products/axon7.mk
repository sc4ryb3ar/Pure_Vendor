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

IS_ARM64 := true

# Include Official OTA Package
WITH_OFFICIALOTA := true

# Support Beta OTA Opt-in (Requires additional ota xml)
BETA_OTA := true

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit AOSP device configuration for axon7
$(call inherit-product, device/zte/axon7/seven.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := axon7
PRODUCT_NAME := aosp_axon7
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE A2017U
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := axon7

TARGET_VENDOR := zte

# Pure Fusion OS OnePlus3 Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
DEVICE_MAINTAINERS="sc4ryb3ar"

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME="P996A01_N" \
BUILD_FINGERPRINT="ZTE/P996A01_N/ailsa_ii:7.0/NRD90M/20170128.052618:user/release-keys" \
PRIVATE_BUILD_DESC="P996A01_N-user 7.0 NRD90M 20170128.052618 release-keys"
