#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from msm8916-common
$(call inherit-product, device/asus/msm8916-common/msm8916.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Unify
include device/asus/Z010D/releasetools/unify.mk

# Audio
PRODUCT_COPY_FILES += \
    device/asus/Z010D/audio/mixer_paths_mtp.xml:system/vendor/etc/mixer_paths_mtp.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/asus/Z010D/overlay

# Rootdir
PRODUCT_PACKAGES += \
    init.target.rc

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Include Bootanimation configuration
TARGET_BOOT_ANIMATION_RES := 720

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8916
    
# Inherit the proprietary files
$(call inherit-product, vendor/asus/Z010D/Z010D-vendor.mk)
