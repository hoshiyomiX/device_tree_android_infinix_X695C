#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Infinix-X695C device
$(call inherit-product, device/infinix/Infinix-X695C/device.mk)

PRODUCT_DEVICE := Infinix-X695C
PRODUCT_NAME := lineage_Infinix-X695C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X695C
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_infinix-user 11 RP1A.200720.011 63640 release-keys"

BUILD_FINGERPRINT := Infinix/X695C-GL/Infinix-X695C:11/RP1A.200720.011/220823V355:user/release-keys
