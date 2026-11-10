#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/nothing/frogger/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := frogger
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A069
PRODUCT_NAME := lineage_frogger

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 17 CQ2A.260522.002-CP2A.260605.016 2610232145 release-keys" \
    BuildFingerprint=Nothing/Frogger/Frogger:14/UKQ1.260129.001/2610232145:user/release-keys \
    BuildSystemFingerprint=qti/qssi_64/qssi_64:17/CQ2A.260522.002-CP2A.260605.016/2610232145:user/release-keys \
    DeviceName=Frogger \
    DeviceProduct=Frogger \
    SystemDevice=Frogger \
    SystemName=Frogger
