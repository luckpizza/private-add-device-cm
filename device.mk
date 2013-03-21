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

$(call inherit-product, device/SEDMANUFACTURER/common/device.mk)
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


#### CHINESE SOFTWARE

ifeq ($(strip $(BUILD_WITH_RK_EBOOK)),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rkbook/apk/BooksProvider.apk:system/app/BooksProvider.apk \
    $(LOCAL_PATH)/rkbook/apk/RKEBookReader.apk:system/app/RKEBookReader.apk \
    $(LOCAL_PATH)/rkbook/bin/adobedevchk:system/bin/adobedevchk \
    $(LOCAL_PATH)/rkbook/lib/libadobe_rmsdk.so:system/lib/libadobe_rmsdk.so \
    $(LOCAL_PATH)/rkbook/lib/libRkDeflatingDecompressor.so:system/lib/libRkDeflatingDecompressor.so \
    $(LOCAL_PATH)/rkbook/lib/librm_ssl.so:system/lib/librm_ssl.so \
    $(LOCAL_PATH)/rkbook/lib/libflip.so:system/lib/libflip.so \
    $(LOCAL_PATH)/rkbook/lib/librm_crypto.so:system/lib/librm_crypto.so \
    $(LOCAL_PATH)/rkbook/lib/rmsdk.ver:system/lib/rmsdk.ver \
    $(LOCAL_PATH)/rkbook/fonts/adobefonts/AdobeMyungjoStd.bin:system/fonts/adobefonts/AdobeMyungjoStd.bin \
    $(LOCAL_PATH)/rkbook/fonts/adobefonts/CRengine.ttf:system/fonts/adobefonts/CRengine.ttf \
    $(LOCAL_PATH)/rkbook/fonts/adobefonts/RyoGothicPlusN.bin:system/fonts/adobefonts/RyoGothicPlusN.bin \
    $(LOCAL_PATH)/rkbook/fonts/adobefonts/AdobeHeitiStd.bin:system/fonts/adobefonts/AdobeHeitiStd.bin \
    $(LOCAL_PATH)/rkbook/fonts/adobefonts/AdobeMingStd.bin:system/fonts/adobefonts/AdobeMingStd.bin
endif
ifeq ($(strip $(BUILD_WITH_PLOYER_APK)),true)
PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/ployer/apk/documentstogo.apk:system/app/documentstogo.apk \
    $(LOCAL_PATH)/ployer/apk/fennudexiaoniaoliangzhounianjinianban_V2.5.3_mumayi_5184f.apk:system/app/fennudexiaoniaoliangzhounianjinianban_V2.5.3_mumayi_5184f.apk \
    $(LOCAL_PATH)/ployer/apk/fishingjoy.apk:system/app/fishingjoy.apk \
    $(LOCAL_PATH)/ployer/apk/iReaderyueduqi_V1.6.0.0_mumayi_f4b0d.apk:system/app/iReaderyueduqi_V1.6.0.0_mumayi_f4b0d.apk \
    $(LOCAL_PATH)/ployer/apk/qiyiyingshi_V3.0_mumayi_e3d3e.apk:system/app/qiyiyingshi_V3.0_mumayi_e3d3e.apk \
    $(LOCAL_PATH)/ployer/apk/shuiguorenzhegaoqingban_V1.5.4_mumayi_2cc77.apk:system/app/shuiguorenzhegaoqingban_V1.5.4_mumayi_2cc77.apk \
    $(LOCAL_PATH)/ployer/apk/SogouInput_android_2.0_sweb.apk:system/app/SogouInput_android_2.0_sweb.apk \
    $(LOCAL_PATH)/ployer/apk/talkingtom2_free_v1.2.1.apk:system/app/talkingtom2_free_v1.2.1.apk \
    $(LOCAL_PATH)/ployer/apk/tonghuashunshoujichaogu_V5.32.01_mumayi_59468.apk:system/app/tonghuashunshoujichaogu_V5.32.01_mumayi_59468.apk \
    $(LOCAL_PATH)/ployer/apk/zhonghuawannianli_ECalendar_V3.2.3_mumayi_3ee39.apk:system/app/zhonghuawannianli_ECalendar_V3.2.3_mumayi_3ee39.apk \
    $(LOCAL_PATH)/ployer/apk/qq.apk:system/app/qq.apk \
    $(LOCAL_PATH)/ployer/apk/qq_music.apk:system/app/qq_music.apk \
    $(LOCAL_PATH)/ployer/apk/uc0120507.apk:system/app/uc0120507.apk \
    $(LOCAL_PATH)/ployer/apk/software_center2.1.apk:system/app/software_center2.1.apk \
    $(LOCAL_PATH)/ployer/apk/phone_tv_pad.apk:system/app/phone_tv_pad.apk \
    $(LOCAL_PATH)/ployer/apk/unrarPro.apk:system/app/unrarPro.apk \
    $(LOCAL_PATH)/ployer/lib/libangrybirds.so:system/lib/libangrybirds.so \
    $(LOCAL_PATH)/ployer/lib/libpushprotocol.so:system/lib/libpushprotocol.so \
    $(LOCAL_PATH)/ployer/lib/libcocos2d.so:system/lib/libcocos2d.so \
    $(LOCAL_PATH)/ployer/lib/libcocosdenshion.so:system/lib/libcocosdenshion.so \
    $(LOCAL_PATH)/ployer/lib/libgame.so:system/lib/libgame.so \
    $(LOCAL_PATH)/ployer/lib/libgame_logic.so:system/lib/libgame_logic.so \
    $(LOCAL_PATH)/ployer/lib/libiReader_ebk3parser.so:system/lib/libiReader_ebk3parser.so \
    $(LOCAL_PATH)/ployer/lib/libiReader_epubparser.so:system/lib/libiReader_epubparser.so \
    $(LOCAL_PATH)/ployer/lib/libzhangyue.so:system/lib/libzhangyue.so \
    $(LOCAL_PATH)/ployer/lib/libamrnb.so:system/lib/libamrnb.so \
    $(LOCAL_PATH)/ployer/lib/libaudiohelper.so:system/lib/libaudiohelper.so \
    $(LOCAL_PATH)/ployer/lib/libcodecwrapper.so:system/lib/libcodecwrapper.so \
    $(LOCAL_PATH)/ployer/lib/libCommon.so:system/lib/libCommon.so \
	$(LOCAL_PATH)/ployer/lib/liblbs.so:system/lib/liblbs.so \
    $(LOCAL_PATH)/ployer/lib/libmsfboot.so:system/lib/libmsfboot.so \
    $(LOCAL_PATH)/ployer/lib/libsnapcore.so:system/lib/libsnapcore.so \
    $(LOCAL_PATH)/ployer/lib/libVideoCtrl.so:system/lib/libVideoCtrl.so \
    $(LOCAL_PATH)/ployer/lib/libfruitninja.so:system/lib/libfruitninja.so \
    $(LOCAL_PATH)/ployer/lib/libhanvonhw_v30.so:system/lib/libhanvonhw_v30.so \
    $(LOCAL_PATH)/ployer/lib/libsogouime_jni_v30.so:system/lib/libsogouime_jni_v30.so \
    $(LOCAL_PATH)/ployer/lib/libspeex_sogou_v30.so:system/lib/libspeex_sogou_v30.so \
    $(LOCAL_PATH)/ployer/lib/libthemeextractor_v30.so:system/lib/libthemeextractor_v30.so \
    $(LOCAL_PATH)/ployer/lib/libffmpeg001.so:system/lib/libffmpeg001.so \
    $(LOCAL_PATH)/ployer/lib/libsoundtouch001.so:system/lib/libsoundtouch001.so \
    $(LOCAL_PATH)/ployer/lib/libunrar-jni.so:system/lib/libunrar-jni.so \
    $(LOCAL_PATH)/ployer/bootanimation.zip:system/media/bootanimation.zip
endif
ifeq ($(strip $(BUILD_WITH_HDMI_APK)),true)
PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/hdmi/HdmiController.apk:system/app/HdmiController.apk
endif

