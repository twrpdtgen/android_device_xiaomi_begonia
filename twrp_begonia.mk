#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omn stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from begonia device
$(call inherit-product, device/xiaomi/begonia/device.mk)

PRODUCT_DEVICE := begonia
PRODUCT_NAME := twrp_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="begonia-user 11 RP1A.200720.011 V12.5.15.0.RGGEUXM release-keys"

BUILD_FINGERPRINT := Redmi/begonia/begonia:11/RP1A.200720.011/V12.5.15.0.RGGEUXM:user/release-keys
