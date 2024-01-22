PRODUCT_PACKAGES += \
    ih8sn

PRODUCT_COPY_FILES += \
    vendor/extra/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

SELINUX_IGNORE_NEVERALLOWS := true

# Pacman for Android
$(call inherit-product, vendor/pfa/common.mk)

# Gapps
#$(call inherit-product, vendor/gms/products/gms.mk)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
#$(call inherit-product, vendor/gms/gms_full.mk)

PRODUCT_PACKAGES += \
    F-Droid \
    F-DroidPrivilegedExtension

PRODUCT_ADB_KEYS := /home/kxxt/.android/adbkey.pub
