# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include $(CLEAR_VARS)
LOCAL_MODULE := OneSegDsmcc
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/bin/OneSegDsmcc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_VENDOR_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SDtvService
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/bin/SDtvService
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_VENDOR_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := BMLEngineServer
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/bin/BMLEngineServer
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_VENDOR_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := broadcastProcessObserver
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/bin/broadcastProcessObserver
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := isdbtmmtest
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/bin/isdbtmmtest
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libISDBT_FactoryTestJNI
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/lib/libISDBT_FactoryTestJNI.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libbroadcastForOneSeg_jni
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/lib/libbroadcastForOneSeg_jni.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libBMLJNI
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/lib/libBMLJNI.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ISDBT_FactoryTest
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/app/ISDBT_FactoryTest.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_JNI_SHARED_LIBRARIES := libISDBT_FactoryTestJNI
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MobileTV_JPN_PHONE_K
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES := proprietary/oneseg/app/MobileTV_JPN_PHONE_K.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_JNI_SHARED_LIBRARIES := libbroadcastForOneSeg_jni libBMLJNI
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
