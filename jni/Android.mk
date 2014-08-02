LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_LDLIBS :=
LOCAL_MODULE    := asmtest
LOCAL_SRC_FILES := launcher.c main.S

include $(BUILD_EXECUTABLE)
