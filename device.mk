# Copyright (C) 2011 The Android Open Source Project
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

# This file includes all definitions that apply only to SEDNAME devices
#
# Anything that is generic to all SEDMANUFACTURER products should go in the common directory
#
# Everything in this directory will become public

#$(call inherit-product, device/SEDMANUFACTURER/common/device.mk)
$(call inherit-product-if-exists, vendor/SEDMANUFACTURER/SEDNAME/SEDNAME-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/SEDMANUFACTURER/SEDNAME/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#

PRODUCT_COPY_FILES += \
	device/SEDMANUFACTURER/SEDNAME/init.sun4i.modules.rc:root/init.sun4i.modules.rc \
	device/SEDMANUFACTURER/SEDNAME/config/camera.cfg:system/etc/camera.cfg \
	device/SEDMANUFACTURER/SEDNAME/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/SEDMANUFACTURER/SEDNAME/config/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/SEDMANUFACTURER/SEDNAME/config/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/SEDMANUFACTURER/SEDNAME/config/Goodix-TS-board-3.idc:system/usr/idc/Goodix-TS-board-3.idc \
	device/SEDMANUFACTURER/SEDNAME/config/devicespecific.sh:recovery/root/sbin/devicespecific.sh \
#
