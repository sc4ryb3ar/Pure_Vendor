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

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for condor.
$(call inherit-product, device/motorola/falcon/aosp_falcon.mk)

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Override AOSP build properties
PRODUCT_NAME := falcon
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := falcon
PRODUCT_MODEL := Moto G
PRODUCT_MANUFACTURER := motorola

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=falcon \
    BUILD_FINGERPRINT=motorola/falcon_reteu/falcon_umts:5.1/LPB23.13-56/56:user/release-keys
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.manifest=https://raw.githubusercontent.com/PureNexusProject-Mod/OTA_server/master/falcon.json
