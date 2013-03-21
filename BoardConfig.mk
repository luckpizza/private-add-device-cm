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

# Use the non-open-source part, if present
-include vendor/SEDMANUFACTURER/SEDNAME/BoardConfigVendor.mk

# Use the part that is common between all SEDMANUFACTURER
#include device/SEDMANUFACTURER/common/BoardConfig.mk

## Use to map recoery keys
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/SEDMANUFACTURER/SEDNAME/recovery_keys.c



TARGET_CPU_ABI:=armeabi-v7a
TARGET_CPU_ABI2:=armeabi
TARGET_CPU_SMP:=true
TARGET_ARCH_VARIANT:=armv7-a-neon
ARCH_ARM_HAVE_VFP:=true
TARGET_ARCH_VARIANT_CPU:=cortex-a9
TARGET_ARCH_VARIANT_FPU:=neon
ARCH_ARM_HAVE_NEON:=true
ARCH_ARM_HAVE_TLS_REGISTER:=true
ARCH_ARM_HAVE_ARMV7A:=true
TARGET_GLOBAL_CFLAGS+=-mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS+=-mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

#IF using a prebuilt kernel
TARGET_PREBUILT_KERNEL:=device/SEDMANUFACTURER/SEDNAME/kernel
#IF compileing the kernel
#TARGET_KERNEL_SOURCE := kernel/rk/rk30sdk
#TARGET_KERNEL_CONFIG := SEDNAME_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-gnueabi-
BOARD_KERNEL_BASE:=0x60400000
BOARD_KERNEL_CMDLINE:=
BOARD_PAGE_SIZE:=16384
TARGET_NO_RADIOIMAGE:=true
TARGET_BOARD_PLATFORM:=rk30sdk
TARGET_BOOTLOADER_BOARD_NAME:=rk30board




# FILESYSTEM
BOARD_HAS_LARGE_FILESYSTEM:=true
TARGET_USERIMAGES_USE_EXT4:=true
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=524288000
BOARD_FLASH_BLOCK_SIZE:=131072
BOARD_USERDATAIMAGE_PARTITION_SIZE:=1572864000

# MISC
TARGET_PROVIDES_INIT_RC:=true
TARGET_BOOTANIMATION_PRELOAD:=true

# GENERIC
BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := true
BOARD_USES_HC_RADIO := true
TARGET_NO_BOOTLOADER := true

# OVERLAY
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# GRAPHICS FIX
BOARD_EGL_CFG := device/SEDMANUFACTURER/SEDNAME/prebuilt/configs/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_DISABLE_TRIPLE_BUFFERING := true

# RECOVERY
#TARGET_RECOVERY_INITRC := device/SEDMANUFACTURER/SEDNAME/recovery.init.rc


#BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
#BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"

# BLUETOOTH
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# WIFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcm4329_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcm4329_apsta.bin"


#This should stay always
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/SEDMANUFACTURER/SEDNAME/releasetools/ota_from_target_files

