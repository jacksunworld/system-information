#
# Copyright (C) 2008 The Android Open Source Project
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
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := sysinfo-trial

LOCAL_STATIC_JAVA_LIBRARIES := admob
#LOCAL_SHARED_LIBRARIES := ifprint ifprint-v7a
#LOCAL_PREBUILT_LIBS := ifprint ifprint-v7a
LOCAL_STATIC_LIBRARIES := ifprint ifprint-v7a

LOCAL_PROGUARD_FLAGS := -include $(LOCAL_PATH)/proguard.flags

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := admob:libs/admob-sdk-android.jar
include $(BUILD_MULTI_PREBUILT)

##################################################
include $(CLEAR_VARS)

#LOCAL_PREBUILT_STATIC_LIBRARIES := ifprint:libs/armeabi/libifprint.so
include $(BUILD_MULTI_PREBUILT)

##################################################
include $(CLEAR_VARS)

#LOCAL_PREBUILT_STATIC_LIBRARIES := ifprint-v7a:libs/armeabi-v7a/libifprint.so
include $(BUILD_MULTI_PREBUILT)

