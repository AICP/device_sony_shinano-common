ifeq ($(filter-out aries castor castor_windy leo scorpion scorpion_windy sirius z3 z3c,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
