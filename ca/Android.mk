LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

ifeq ($(TARGET_ARCH), arm)
LOCAL_SRC_FILES := bin/tee_hdcp
else
LOCAL_SRC_FILES := bin64/tee_hdcp
endif

LOCAL_MODULE := tee_hdcp
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/bin
include $(BUILD_PREBUILT)
