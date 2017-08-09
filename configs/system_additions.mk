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

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# PureFusionOS OTA
$(call inherit-product-if-exists, vendor/pure/configs/ota.mk)

# Allow recording ADB logcat during boot phase
PRODUCT_PROPERTY_OVERRIDES += \
		 ro.adb.secure=0 \
		 ro.secure=0 \
		 persist.service.adb.enable=1
