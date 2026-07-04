# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    MiuiCamera

# Shims
PRODUCT_PACKAGES += \
    libgui_shim_miuicamera

# Logging
PRODUCT_SYSTEM_PROPERTIES += \
   log.tag.CHIUSECASE=ERROR

PRODUCT_VENDOR_PROPERTIES += \
   persist.vendor.camera.logInfoMask=false

# Symlinks
PRODUCT_PACKAGES += \
    miui_camera_libcamera_algoup_symlink \
    miui_camera_libcamera_mianode_symlink \
    miui_camera_libmicampostproc_symlink \
    miui_camera_campostproc_vendor_symlink \
    miui_camera_libOpenCL_symlink \
    miui_camera_libmqsas_symlink \
    miui_camera_libcameraimpl_symlink \
    miui_camera_libopencl_camera_symlink

# MiSys HIDL deps
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor \
    android.hidl.memory@1.0-impl
#
# Copyright (C) 2023-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/miuicamera-gauguin/miuicamera-gauguin-vendor.mk)

# Priv-app permission
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-mimoji.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mimoji.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuiextraphoto.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuiextraphoto.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml

# Hardware Video Codec Profiles
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    gralloc.qcom
