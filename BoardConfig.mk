#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/yu/tomato/board/*.mk

# Assertions
TARGET_BOARD_INFO_FILE := device/yu/tomato/board-info.txt

# Inherit from proprietary files
include vendor/yu/tomato/BoardConfigVendor.mk
ALLOW_MISSING_DEPENDENCIES =true
WITH_DEXPREOPT := true

#Selinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
#TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_ABI :=
#TARGET_2ND_CPU_ABI2 :=
TARGET_2ND_CPU_VARIANT := cortex-a53
