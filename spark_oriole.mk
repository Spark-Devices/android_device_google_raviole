# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Inherit some common SparkOS stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)
$(call inherit-product, device/google/raviole/device-spark.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := spark_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SQ3A.220705.003 8671607 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SQ3A.220705.003/8671607:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
