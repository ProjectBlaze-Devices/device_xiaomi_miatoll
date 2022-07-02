# Copyright (C) 2020 Fluid
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

$(call inherit-product, device/xiaomi/miatoll/device.mk)
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Blaze Official Stuff
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := SKORPION_29
TARGET_USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := blaze_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6250
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Set this flag in build script
ifeq ($(CURRENT_BUILD_TYPE), gapps)
# Use Gapps
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
endif
