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



#IF using a prebuilt kernel
TARGET_PREBUILT_KERNEL:=device/SEDMANUFACTURER/SEDNAME/kernel
#IF compileing the kernel
#TARGET_KERNEL_SOURCE := PUT_THE_PATH_TO_KERNEL_SOURCE
#TARGET_KERNEL_CONFIG := SEDNAME_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-gnueabi-


## Plase change if CPU ABI is different!
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

#Dont build a BOOTLOADER
TARGET_NO_BOOTLOADER := true

