LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fstab.shinano
LOCAL_SRC_FILES := fstab.shinano
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.shinano
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.$(TARGET_DEVICE)
LOCAL_SRC_FILES := init.shinano.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.shinano.pwr
LOCAL_SRC_FILES := init.shinano.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.shinano.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.$(TARGET_DEVICE)
LOCAL_SRC_FILES := init.recovery.shinano.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.$(TARGET_DEVICE)
LOCAL_SRC_FILES := ueventd.shinano.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/root && pushd $(PRODUCT_OUT)/root > /dev/null && ln -s fstab.shinano fstab.$(TARGET_DEVICE) && popd > /dev/null)

ifneq ($(TARGET_VENDOR_DEVICE_NAME),)
    $(shell mkdir -p $(PRODUCT_OUT)/root && pushd $(PRODUCT_OUT)/root > /dev/null && \
           ln -s fstab.$(TARGET_DEVICE) fstab.$(TARGET_VENDOR_DEVICE_NAME) && \
           ln -s init.$(TARGET_DEVICE).rc init.$(TARGET_VENDOR_DEVICE_NAME).rc && \
           ln -s init.recovery.$(TARGET_DEVICE).rc init.recovery.$(TARGET_VENDOR_DEVICE_NAME).rc && \
           ln -s ueventd.$(TARGET_DEVICE).rc ueventd.$(TARGET_VENDOR_DEVICE_NAME).rc && \
           popd > /dev/null)
endif
