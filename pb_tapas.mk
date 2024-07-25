#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from these configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/tapas/device.mk)

# Inherit from PBRP common configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier
PRODUCT_DEVICE := tapas
PRODUCT_NAME := pb_tapas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 4G
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# PBRP - Flashlight path
PB_TORCH_PATH := "/system/etc/flashlight"

# PBRP - Disable flashlight brightness slider
PB_TORCH_MAX_BRIGHTNESS := 1

# PBRP - Disable Treble compatibility check
PB_DISABLE_DEFAULT_TREBLE_COMP := true
