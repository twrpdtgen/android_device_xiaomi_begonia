#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from begonia device
$(call inherit-product, device/xiaomi/begonia/device.mk)

PRODUCT_DEVICE := begonia
PRODUCT_NAME := omni_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_begonia-eng 11 RQ1A.210205.004 eng.santoshhh000.20220321.152927 test-keys"

BUILD_FINGERPRINT := Redmi/twrp_begonia/begonia:11/RQ1A.210205.004/santoshhh00003212024:eng/test-keys
