# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/raviole/overlay-spark

# RRO Overlays
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay \
    NowPlayingOverlay

# ADB
PRODUCT_PRODUCT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp,adb \
    persist.service.debuggable=1 \
    persist.service.adb.enable=1

# artifacts
$(call inherit-product, device/google/raviole/artifacts.mk)

# Property overrides - system
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Propperties - product
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.columbus.use_ap_sensor=false

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Libraries required for vendor
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor:64 \
    android.hardware.authsecret@1.0.vendor:64 \
    android.hardware.biometrics.fingerprint-V1-ndk_platform.vendor:64 \
    android.hardware.bluetooth@1.1.vendor:64 \
    android.hardware.confirmationui@1.0.vendor:64 \
    android.hardware.confirmationui@1.0-lib.trusty:64 \
    android.hardware.drm@1.4.vendor:64 \
    android.hardware.keymaster@4.1.vendor:64 \
    android.hardware.oemlock@1.0.vendor:64 \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.input.classifier@1.0.vendor:64 \
    android.hardware.neuralnetworks-V1-ndk_platform.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.power@1.2.vendor:64 \
    android.hardware.radio@1.6.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.1.vendor \
    android.hardware.tetheroffload.config@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.1.vendor:64 \
    android.hardware.weaver@1.0.vendor:64 \
    android.hardware.wifi@1.5.vendor:64 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor:64 \
    hardware.google.bluetooth.ccc@1.0.vendor:64 \
    hardware.google.bluetooth.sar@1.1.vendor:64 \
    pixelpowerstats_provider_aidl_interface-cpp.vendor:64 \
    libaudioroutev2.vendor \
    libavservices_minijail_vendor:64 \
    libcodec2_hidl@1.0.vendor \
    libcodec2_vndk.vendor \
    libcppbor.vendor:64 \
    libGralloc4Wrapper \
    libexynosv4l2 \
    libexynosutils \
    libhwbinder.vendor \
    libmedia_ecoservice.vendor \
    libkeymaster4support.vendor:64 \
    libnetfilter_conntrack:64 \
    libnfnetlink:64 \
    libnos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libsensorndkbridge \
    libsfplugin_ccodec_utils.vendor \
    libtinycompress \
    libtrusty_metrics:64 \
    libwifi-hal:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    sensors.dynamic_sensor_hal \
    vendor.google.google_battery@1.1.vendor \
    vendor.google.wireless_charger@1.3.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.singlereg.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.singlereg.xml

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.gs101

# Telephony
PRODUCT_PACKAGES += \
    ImsServiceEntitlement \
    Iwlan

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# SparkOS device maintainer metadata
PRODUCT_SYSTEM_PROPERTIES += \
    ro.spark.maintainer=Albinoman887
    ro.spark.maintainer.username=Albinoman887

# Vendor Properties
TARGET_VENDOR_PROP := device/google/raviole/vendor.prop
