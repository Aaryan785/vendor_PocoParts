VENDOR_PATH := vendor/PocoParts

# Files Dirac
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    $(VENDOR_PATH)/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(VENDOR_PATH)/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    $(VENDOR_PATH)/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin

# PocoParts
PRODUCT_SOONG_NAMESPACES += \
    vendor/PocoParts

PRODUCT_PACKAGES += \
    PocoParts \
    XiaomiDoze \
    XiaomiDirac \
    XiaomiParts

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/PocoParts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-parts.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.pocoparts.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.pocoparts.rc

PRODUCT_PRODUCT_PROPERTIES += \
    persist.lcd.cabc_mode=1

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
   $(VENDOR_PATH)/overlay

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy/vendor
TARGET_SEPOLICY_DIR := msmsteppe

# Properties
TARGET_SYSTEM_EXT_PROP += $(VENDOR_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(VENDOR_PATH)/vendor.prop
