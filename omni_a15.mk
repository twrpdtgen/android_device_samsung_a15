#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a15 device
$(call inherit-product, device/samsung/a15/device.mk)

PRODUCT_DEVICE := a15
PRODUCT_NAME := omni_a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15nsxx-user 12 SP1A.210812.016 A155FXXU1AWKA release-keys"

BUILD_FINGERPRINT := samsung/a15nsxx/a15:12/SP1A.210812.016/A155FXXU1AWKA:user/release-keys
