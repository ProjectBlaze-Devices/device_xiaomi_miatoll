#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the Blaze configuration.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

PRODUCT_NAME := blaze_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blaze Official Stuff
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := SwapnilVicky
TARGET_USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miatoll_global-user 12 SKQ1.211019.001 V13.0.2.0.SJWMIXM release-keys"

BUILD_FINGERPRINT := Redmi/miatoll_global/miatoll:12/RKQ1.211019.001/V13.0.2.0.SJWMIXM:user/release-keys