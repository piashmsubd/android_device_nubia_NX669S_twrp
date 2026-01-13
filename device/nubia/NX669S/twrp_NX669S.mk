#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from TWRP/Omni product configuration
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)
$(call inherit-product-if-exists, vendor/omni/config/common.mk)

# Inherit from device
$(call inherit-product, device/nubia/NX669S/device.mk)

# Device identifier
PRODUCT_DEVICE := NX669S
PRODUCT_NAME := twrp_NX669S
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Red Magic 6S Pro
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX669J-user 11 RKQ1.210614.002 nubia.20210924.043249 release-keys"

BUILD_FINGERPRINT := nubia/NX669J/NX669J:11/RKQ1.210614.002/nubia.20210924.043249:user/release-keys
