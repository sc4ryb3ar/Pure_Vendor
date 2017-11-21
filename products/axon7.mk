IS_ARM64 := true

WITH_OFFICIALOTA := true

BETA_OTA := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PureFusionOS stuff.
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

# Inherit AOSP device configuration for axon7
$(call inherit-product, device/zte/axon7/seven.mk)

# Set those variables here to overwrite the inherited values.

PRODUCT_DEVICE := axon7
PRODUCT_NAME := axon7
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE AXON 7
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := axon7

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="P996A01_N" \
		BUILD_FINGERPRINT="ZTE/P996A01_N/ailsa_ii:7.1.1/NMF26V/20170725.003053:user/release-keys" \
		PRIVATE_BUILD_DESC="P996A01_N-user 7.1.1 NMF26V 20170725.003053 release-keys" 

TARGET_VENDOR := zte

# Boot Animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
