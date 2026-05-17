APP_ABI := armeabi-v7a
APP_PLATFORM := android-21
APP_STL := c++_static

# --- НОВЫЕ ПАРАМЕТРЫ ---
# Флаги совместимости для старого кода:
# -fno-strict-aliasing: отключает агрессивную оптимизацию указателей (спасает от крашей из-за нарушения стандартов C/C++)
# -fwrapv: разрешает безопасное переполнение знаковых целых чисел (часто использовалось в ретро-играх)
APP_CFLAGS += -fno-strict-aliasing -fwrapv
APP_CPPFLAGS += -fno-strict-aliasing -fwrapv