#
# Copyright (C) 2023-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
include vendor/xiaomi/miuicamera-gauguin/BoardConfigVendor.mk

MIUICAMERA_PATH := device/xiaomi/miuicamera-gauguin

# Malloc
MALLOC_SVELTE := true

# Properties
TARGET_SYSTEM_PROP += $(MIUICAMERA_PATH)/system.prop

# Sepolicy MiSys
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/misys/vendor

BOARD_PRIVATE_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/misys/private

BOARD_PUBLIC_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/misys/public

# Sepolicy Camera
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/vendor

BOARD_PRIVATE_SEPOLICY_DIRS += \
    $(MIUICAMERA_PATH)/sepolicy/private

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(MIUICAMERA_PATH)/configs/permissions/extensions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml
# Permissions
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,$(MIUICAMERA_PATH)/configs/permissions/,$(TARGET_COPY_OUT_SYSTEM)/etc)
