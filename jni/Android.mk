LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := poker-handdist
LOCAL_CPPFLAGS  := -std=c++11
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../poker-eval/include
LOCAL_SRC_FILES := \
	Card.cpp \
	CardConverter.cpp \
	HoldemAgnosticHand.cpp \
	HoldemHandDistribution.cpp \
	OmahaAgnosticHand.cpp \
	OmahaHandDistribution.cpp \
	mtrand.cpp
LOCAL_SHARED_LIBRARIES += poker-eval
LOCAL_LDLIBS := -llog -landroid
LOCAL_EXPORT_CPP_INCLUDES := $(LOCAL_PATH)

include $(BUILD_SHARED_LIBRARY)
$(call import-add-path, /Users/amalaviy/android/workspace)
$(call import-module,poker-eval)