# PRODUCT_PACKAGES += \
#     ih8sn

# PRODUCT_COPY_FILES += \
#     vendor/extra/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

SELINUX_IGNORE_NEVERALLOWS := true

# Pacman for Android
$(call inherit-product, vendor/pfa/common.mk)

# Gapps
#$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
#$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
#$(call inherit-product-if-exists, vendor/gms/gms_full.mk)

# MicroG
$(call inherit-product-if-exists, vendor/partner_gms/products/gms.mk)

# MiuiCamera
$(call inherit-product-if-exists, device/xiaomi/miuicamera-$(shell echo -n $(TARGET_PRODUCT) | sed -e 's/^[a-z]*_//g')/device.mk)

# Included in microg
# PRODUCT_PACKAGES += \
#     F-Droid \
#     F-DroidPrivilegedExtension

PRODUCT_ADB_KEYS := adbkey.pub

# RRO

PRODUCT_PACKAGES += \
    CaptivePortalOverride

# Tailscale

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += external/tailscale/sepolicy

PRODUCT_PACKAGES += \
    tailscale \
    tailscaled \
    init.tailscale.rc

PRODUCT_PACKAGES += KxxtUpdaterOverlay
