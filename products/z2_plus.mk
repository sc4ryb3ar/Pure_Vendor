# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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
# Inherit from z2_plus device
$(call inherit-product, device/zuk/z2_plus/aosp_z2_plus.mk)
PRODUCT_NAME := z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_GMS_CLIENTID_BASE := android-zuk
TARGET_VENDOR := zuk
