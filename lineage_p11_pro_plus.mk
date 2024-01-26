#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from p11_pro_plus device
$(call inherit-product, device/lenovo/p11_pro_plus/device.mk)

PRODUCT_DEVICE := p11_pro_plus
PRODUCT_NAME := lineage_p11_pro_plus
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J716F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LenovoTB-J716F_PRC-user 13 TKQ1.221013.002 15.0.423_231222 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-J716F_PRC/J716F:13/TKQ1.221013.002/15.0.423_231222:user/release-keys
