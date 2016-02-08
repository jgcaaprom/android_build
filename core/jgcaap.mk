DEBUG_SYMBOL_FLAGS := -g0 -DNDEBUG
DEBUG_FRAME_POINTER_FLAGS := -fomit-frame-pointer
USE_PROGUARD_OPTIMIZATIONS := true

PRODUCT_PROPERTY_OVERRIDES += \ 
     dalvik.vm.dex2oat-filter=interpret-only \
     dalvik.vm.image-dex2oat-filter=speed
