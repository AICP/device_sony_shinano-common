# Copyright 2016 David Viteri <davidteri91@gmail.com>
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

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/sony/msm

# Display HAL
SONY_AOSP_DISPLAY := true
$(call project-set-path,qcom-display,hardware/sony/display/msm8994)

# Nfc
BOARD_NFC_CHIPSET := pn547

# Recovery
LZMA_RAMDISK_TARGETS := recovery
