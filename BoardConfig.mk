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

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600
DEVICE_RESOLUTION := 2560x1600

TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
