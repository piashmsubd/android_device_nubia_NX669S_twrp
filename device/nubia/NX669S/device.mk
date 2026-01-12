#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/nubia/NX669S

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES += \
    bootctrl.lahaina \
    bootctrl.lahaina.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery

# Qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/qcom-caf/bootctrl \
    vendor/qcom/opensource/commonsys-intf/display

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp

# Update engine
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30
