#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL msm8960 devices, and
# are also specific to msm8960 devices
#
# Everything in this directory will become public

# Overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Camera
PRODUCT_PACKAGES += \
    camera.flo

# Carrier
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.default

# Ramdisk
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/fstab.flo:root/fstab.flo \
    $(LOCAL_PATH)/init.flo.rc:root/init.flo.rc

# Inherit from flo common
$(call inherit-product, $(LOCAL_PATH)/device-common.mk)
