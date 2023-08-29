#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := p11_pro_plus
PRODUCT_NAME := twrp_p11_pro_plus
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J716F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LenovoTB-J716F_PRC-user 12 SKQ1.220213.001 14.0.266_230630 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-J716F_PRC/J716F:12/SKQ1.220213.001/14.0.266_230630:user/release-keys

# Inherit from p11_pro_plus device
$(call inherit-product, device/lenovo/p11_pro_plus/device.mk)
