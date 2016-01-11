LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), cancro)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
