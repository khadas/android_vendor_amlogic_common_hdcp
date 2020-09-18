LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES_32 := bin/tee_hdcp
LOCAL_SRC_FILES_64 := bin64/tee_hdcp
LOCAL_MODULE := tee_hdcp
LOCAL_INIT_RC := tee_hdcp.rc
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES := libteec libcutils

LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
