#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from z3s device
$(call inherit-product, device/samsung/z3s/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := z3s
PRODUCT_NAME := aosp_z3s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G988B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=z3sxxx \
    PRIVATE_BUILD_DESC="z3sxxx-user 11 RP1A.200720.012 G988BXXSJHXC1 release-keys"

BUILD_FINGERPRINT := samsung/z3sxxx/z3s:11/RP1A.200720.012/G988BXXSJHXC1:user/release-keys

# Define PDA property for camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.PDA=G988BXXSJHXC1
