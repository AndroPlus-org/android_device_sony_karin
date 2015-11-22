# Copyright 2014 The Android Open Source Project
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

include device/sony/kitakami/BoardConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := SGP771
TARGET_KERNEL_SOURCE := kernel/sony/kitakami
TARGET_KERNEL_CONFIG := kitakami_defconfig

TW_BRIGHTNESS_PATH := /sys/class/leds/wled/brightness
TW_MAX_BRIGHTNESS := 4095
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_NEVER_UNMOUNT_SYSTEM := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone10/temp

TW_THEME := landscape_hdpi

DEVICE_RESOLUTION := 2560x1600

TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# TS config from kitakami-common
PRODUCT_COPY_FILES += \
    device/sony/kitakami/rootdir/system/usr/keylayout/touch_fusion.kl:recovery/root/system/usr/keylayout/touch_fusion.kl \
    device/sony/kitakami/rootdir/system/usr/idc/touch_fusion.idc:recovery/root/system/usr/idc/touch_fusion.idc

# TS config
PRODUCT_COPY_FILES += \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0000.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0000.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0700.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0700.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0701.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0701.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0702.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0702.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0704.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0704.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0705.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0705.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0706.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0706.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0708.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0708.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0709.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0709.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x070A.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x070A.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x070C.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x070C.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x070D.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x070D.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0710.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0710.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x0717.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x0717.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x071B.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x071B.cfg \
    device/sony/karin/rootdir/system/vendor/etc/touch_fusion_panel_id_0x071F.cfg:recovery/root/system/vendor/etc/touch_fusion_panel_id_0x071F.cfg

# TS FW loader
PRODUCT_COPY_FILES += \
    vendor/sony/karin/proprietary/vendor/bin/touch_fusion:recovery/root/system/vendor/bin/touch_fusion

# TS FW
PRODUCT_COPY_FILES += \
    vendor/sony/karin/proprietary/vendor/firmware/max11945.bin:recovery/root/vendor/firmware/max11945.bin
