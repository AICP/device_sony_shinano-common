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

SONY_ROOT := device/sony/shinano-common/rootdir

# ANT+
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Nfc
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default \

# Sensors config
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/sec_config:system/etc/sec_config

# Blur
include vendor/qcom/extras/msm8974/graphics/libuiblur.mk
