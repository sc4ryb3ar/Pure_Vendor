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
# Inherit AOSP device configuration for oneplus3
$(call inherit-product, device/leeco/x2/aosp_x2.mk)
PRODUCT_NAME := x2
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := Leeco
PRODUCT_BRAND := letv
PRODUCT_GMS_CLIENTID_BASE := android-letv
TARGET_VENDOR := leeco

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.manifest=https://raw.githubusercontent.com/PureNexusProject-Mod/OTA_server/master/x2.json
