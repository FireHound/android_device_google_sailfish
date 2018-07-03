# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common FireHound stuff.
$(call inherit-product, vendor/fh/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Disable FH Prebuilts
DISABLE_CNM := true
DISABLE_CWB := true

-include device/google/marlin/sailfish/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := fh_sailfish
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 8.1.0 OPM4.171019.021.P1 4820305 release-keys"

BUILD_FINGERPRINT := google/sailfish/sailfish:8.1.0/OPM4.171019.021.P1/4820305:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
