#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/lge/d856/kernel:kernel \
    device/lge/d856/dtb:dtb \
    device/lge/d856/img_info:img_info \
    device/lge/d856/init.recovery.g3.rc:root/init.recovery.g3.rc \
    device/lge/d856/multirom/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/lge/d856/multirom/sign:recovery/root/res/sign

PRODUCT_COPY_FILES += device/lge/d856/fstab.g3:recovery/root/fstab.g3
PRODUCT_COPY_FILES += device/lge/d856/multirom/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_NAME := omni_d856
PRODUCT_DEVICE := d856
PRODUCT_BRAND := LG
PRODUCT_MODEL := G3
PRODUCT_MANUFACTURER := LG

# Kernel inline build
#TARGET_KERNEL_CONFIG := d856_defconfig
#TARGET_VARIANT_CONFIG := d856_defconfig
#TARGET_SELINUX_CONFIG := d856_defconfig
