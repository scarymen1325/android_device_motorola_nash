# Inherit some common Bliss stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Vendor blobs
$(call inherit-product, vendor/motorola/nash/nash-vendor.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device
$(call inherit-product, device/motorola/nash/device.mk)

# Boot Animtion
TARGET_BOOTANIMATION_HALF_RES := true

# Device identifiers
BUILD_FINGERPRINT := motorola/nash_tmo_c/nash:8.0.0/OCXS27.109-51-14-7/12:user/release-keys
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := nash
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto Z (2)
PRODUCT_NAME := bliss_nash

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=nash \
        PRIVATE_BUILD_DESC="nash-user 8 OCXS27.109-51-14-7 e78f1 release-keys"
