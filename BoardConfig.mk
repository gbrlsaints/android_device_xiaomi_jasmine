#
# Copyright (C) 2018 CarbonROM
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

include device/xiaomi/sdm660-common/PlatformConfig.mk

DEVICE_PATH := device/xiaomi/jasmine

# A/B
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Root Folders
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# WLAN MAC
WLAN_MAC_SYMLINK := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/nvt_wake_gesture"

# Manifest 
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Security patch level
VENDOR_SECURITY_PATCH := 2018-09-01

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_jasmine
TARGET_RECOVERY_DEVICE_MODULES := libinit_jasmine

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm660
TARGET_KERNEL_CONFIG := jasmine-perf_defconfig
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

