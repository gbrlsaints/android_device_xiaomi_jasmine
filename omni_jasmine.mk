#
# Copyright (C) 2018 LineageOS
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

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation resolution
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from jasmine device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := omni_jasmine
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jasmine
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi A2

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="jasmine" \
    PRODUCT_NAME="jasmine" \
    PRIVATE_BUILD_DESC="jasmine-user 8.1.0 OPM1.171019.011 V9.6.16.0.ODIMIFE release-keys"

BUILD_FINGERPRINT := "xiaomi/jasmine/jasmine_sprout:8.1.0/OPM1.171019.011/V9.6.16.0.ODIMIFE:user/release-keys"

TARGET_VENDOR_PRODUCT_NAME := jasmine
