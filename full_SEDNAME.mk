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


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from our device
$(call inherit-product, device/SEDMANUFACTURER/SEDNAME/device.mk)



# include device/SEDMANUFACTURER/rk30_common/BoardConfigCommon.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/SEDMANUFACTURER/SEDNAME/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/SEDMANUFACTURER/SEDNAME/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# AUDIO LIB
ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
PRODUCT_PACKAGES += \
    libasound \
    alsa.default \
    acoustics.default
endif

# RAMDISK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ramdisk/rk30xxnand_ko.ko:root/rk30xxnand_ko.ko \
    $(LOCAL_PATH)/prebuilt/ramdisk/init:root/init \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.rk30board.rc:root/init.rk30board.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/misc.img:root/misc.img \
    $(LOCAL_PATH)/prebuilt/ramdisk/ueventd.rk30board.rc:root/ueventd.rk30board.rc

# init.d scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.d/03kernel:system/etc/init.d/03kernel \
    $(LOCAL_PATH)/prebuilt/init.d/04mount:system/etc/init.d/04mount
# Prebuilt configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/configs/call-pppd:system/etc/ppp/call-pppd \
    $(LOCAL_PATH)/prebuilt/configs/ip-down:system/etc/ppp/ip-down \
    $(LOCAL_PATH)/prebuilt/configs/ip-up:system/etc/ppp/ip-up \
    $(LOCAL_PATH)/prebuilt/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/configs/rk29-keypad.kl:/system/usr/keylayout/rk29-keypad.kl

# Prebuilt kernel modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/modules/mali.ko:system/lib/modules/mali.ko \
    $(LOCAL_PATH)/prebuilt/modules/rk29-ipp.ko:system/lib/modules/rk29-ipp.ko \
    $(LOCAL_PATH)/prebuilt/modules/rkwifi.ko:system/lib/modules/rkwifi.ko \
    $(LOCAL_PATH)/prebuilt/modules/ump.ko:system/lib/modules/ump.ko \
    $(LOCAL_PATH)/prebuilt/modules/vpu_service.ko:system/lib/modules/vpu_service.ko \
    $(LOCAL_PATH)/prebuilt/modules/wlan.ko:system/lib/modules/wlan.ko

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/configs/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PACKAGES := \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers \

PRODUCT_PACKAGES += \
    Camera

PRODUCT_PACKAGES += \
    audio.primary.default \
    audio_policy.default

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

PRODUCT_PROPERTY_OVERRIDES := \
    hwui.render_dirty_regions=false \
    service.adb.root=1 \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.enable=true \
    persist.sys.timezone=Europe/Berlin \
    persist.sys.language=de \
    persist.sys.country=DE \
    persist.sys.use_dithering=1 \
    persist.sys.purgeable_assets=0 \
    windowsmgr.max_events_per_sec=240 \
    view.touch_slop=2 \
    view.minimum_fling_velocity=25 \
    ro.additionalmounts=/storage/sdcard0 \
    ro.vold.switchablepair=/storage/sdcard0,/storage/sdcard1 \
    persist.sys.vold.switchexternal=0

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := large mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0


PRODUCT_NAME := cm_SEDNAME
PRODUCT_DEVICE := SEDNAME
PRODUCT_BRAND := SEDBRANDING
PRODUCT_MODEL := SEDPRETTYNAME
PRODUCT_MANUFACTURER := SEDMANUFACTURER

# WIFI
#$(call inherit-product, external/wlan_loader/wifi-firmware.mk)

# BLUETOOTH
#$(call inherit-product, system/bluetooth/brcm_patchram_plus/hcd.mk)

#$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
#$(call inherit-product, build/target/product/full_base.mk)
#$(call inherit-product-if-exists, vendor/SEDMANUFACTURER/SEDNAME/tp971500dc-vendor.mk)

