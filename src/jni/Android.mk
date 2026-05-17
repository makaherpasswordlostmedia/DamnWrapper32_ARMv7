LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := DamnWrapper32
LOCAL_SRC_FILES := main.cpp dylb.cpp sqlite3.c
LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv2 -lz

# Принудительная компиляция в полноценном 32-битном режиме ARM (вместо сжатого Thumb-2).
# Это критически важно для старого кода iOS, использующего ассемблерные вставки или специфичную математику.
LOCAL_ARM_MODE := arm

include $(BUILD_SHARED_LIBRARY)
