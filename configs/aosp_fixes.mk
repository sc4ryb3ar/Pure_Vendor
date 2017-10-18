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

# Google property overides

PRODUCT_PROPERTY_OVERRIDES += \
     keyguard.no_require_sim=true \
     ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
     ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
     ro.com.google.clientidbase=android-google \
     ro.error.receiver.system.apps=com.google.android.gms \
     ro.com.android.dataroaming=false \
     ro.setupwizard.rotation_locked=true \
     ro.setupwizard.require_network=any \
     ro.setupwizard.mode=OPTIONAL \
     persist.sys.recovery_update=false \
     ro.substratum.verified=true \
     ro.com.google.ime.theme_id=5 \
     ro.build.selinux=1 \
     persist.sys.dun.override=0 \
     ro.opa.eligible_device=true \
     ro.config.notification_sound=Chime.ogg \
     ro.config.alarm_alert=Flow.ogg \
     ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
     ro.config.ringtone=Zen.ogg

ifeq ($(filter marlin sailfish,$(TARGET_PRODUCT)),)
PRODUCT_PROPERTY_OVERRIDES += \
     ro.control_privapp_permissions=enforce \
     ro.setupwizard.enterprise_mode=1 \
     ro.carrier=unknown
endif

# Get some sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/GoogleAudio.mk)

# Camera Effects for devices without a vendor partition
ifneq ($(filter shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/pure/prebuilt/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/pure/prebuilt/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif
