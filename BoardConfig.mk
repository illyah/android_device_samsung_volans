# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it

# Audio
BOARD_USES_GENERIC_AUDIO := false

# Platform
TARGET_BOARD_PLATFORM := s3c6410
TARGET_BOOTLOADER_BOARD_NAME := volans
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv5te-vfp
TARGET_GLOBAL_CFLAGS += -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -O3
TARGET_GLOBAL_CPPFLAGS += -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -O3



# Package contents
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY  := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_PROVIDES_BOOTMODE := true

# Mobile data
BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

# Camera
USE_CAMERA_STUB := true
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Video Devices
#BOARD_USES_OVERLAY := true
#BOARD_CAMERA_DEVICE := /dev/video0

# Misc
WITH_DEXPREOPT := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BUILD_WITH_FULL_STAGEFRIGHT := true
TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# GPS
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
BOARD_USES_GPSSHIM := true

# 3D
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_EGL_CFG := device/samsung/volans/egl.cfg

# Prelinker
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=\$(TOP)/device/samsung/volans/prelink-linux-arm-volans.map

# Sensor
TARGET_USES_OLD_LIBSENSORS_HAL	:= true
TARGET_SENSORS_NO_OPEN_CHECK	:= true
