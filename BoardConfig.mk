#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/perseus

BUILD_BROKEN_DUP_RULES := true

ALLOW_MISSING_DEPENDENCIES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := perseus

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm845
TARGET_KERNEL_CONFIG := perseus_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
-include vendor/xiaomi/perseus/BoardConfigVendor.mk
