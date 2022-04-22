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

# Camera
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
    vendor.google.google_battery@1.1.vendor:64 \
    vendor.google.wireless_charger@1.3.vendor:64

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

# Gapps
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
WITH_GAPPS := true

# Properties
TARGET_VENDOR_PROP := device/google/raviole/vendor.prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Artifact path requirement allowlist
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/etc/permissions/privapp-permissions-com.crdroid.faceunlock.xml \
    system/etc/sysconfig/hiddenapi-whitelist-com.crdroid.faceunlock.xml \
    system/lib64/faceunlock_vendor_dependencies.so \
    system/lib64/libFaceDetectCA.so \
    system/lib64/libMegviiUnlock-jni-1.2.so \
    system/lib64/libMegviiUnlock.so \
    system/lib64/libarcsoft-lib.so \
    system/lib64/libarcsoft_faceid.so \
    system/lib64/libarcsoftbase.so \
    system/lib64/libmegface.so \
    system/lib64/libmpbase.so \
    system/priv-app/FaceUnlockService/FaceUnlockService.apk \
    system/addon.d/70-velvet.sh \
    system/app/FlipendoPrebuilt/FlipendoPrebuilt.apk \
    system/app/GoogleExtShared/GoogleExtShared.apk \
    system/etc/permissions/privapp-permissions-google.xml \
    system/priv-app/GooglePackageInstaller/GooglePackageInstaller.apk \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/priv-app/NetworkPermissionConfigGoogle/NetworkPermissionConfigGoogle.apk \
    system/priv-app/NetworkStackGoogle/NetworkStackGoogle.apk \
    system/priv-app/TagGoogle/TagGoogle.apk \
    system/app/CaptivePortalLoginGoogle/CaptivePortalLoginGoogle.apk \
    system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
    system/lib/libRSSupport.so \
    system/lib/libblasV8.so \
    system/lib/librsjni.so \
    system/lib64/libRSSupport.so \
    system/lib64/libblasV8.so \
    system/lib64/librsjni.so \
    system/addon.d/50-lineage.sh \
    system/app/NfcNci/NfcNci.apk \
    system/app/NfcNci/lib/arm64/libnfc_nci_jni.so \
    system/app/googleconf/googleconf.apk \
    system/app/wellbeingconf/wellbeingconf.apk \
    system/bin/backuptool_ab.functions \
    system/bin/backuptool_ab.sh \
    system/bin/backuptool_postinstall.sh \
    system/bin/curl \
    system/bin/getcap \
    system/bin/procmem \
    system/bin/scp \
    system/bin/setcap \
    system/bin/sftp \
    system/bin/ssh \
    system/bin/ssh-keygen \
    system/bin/sshd \
    system/bin/start-ssh \
    system/etc/hosts.spark_adblock \
    system/etc/init/lineage-ssh.rc \
    system/etc/init/lineage-system.rc \
    system/etc/init/lineage-updates.rc \
    system/etc/libnfc-nci.conf \
    system/etc/permissions/android.software.nfc.beam.xml \
    system/etc/permissions/android.software.sip.voip.xml \
    system/etc/permissions/privapp-permissions-org.pixelexperience.faceunlock.xml \
    system/etc/permissions/privapp-permissions-spark.xml \
    system/etc/sensitive_pn.xml \
    system/etc/ssh/sshd_config \
    system/etc/sysconfig/backup.xml \
    system/etc/sysconfig/hiddenapi-whitelist-org.pixelexperience.faceunlock.xml \
    system/lib/libsepol.so \
    system/lib64/android.hardware.nfc@1.0.so \
    system/lib64/android.hardware.nfc@1.1.so \
    system/lib64/android.hardware.nfc@1.2.so \
    system/lib64/libnfc-nci.so \
    system/lib64/libnfc_nci_jni.so \
    system/lib64/libsepol.so \
    system/lib64/libssh.so \
    system/priv-app/GoogleExtServices/GoogleExtServices.apk \
    system/usr/keylayout/Vendor_045e_Product_0719.kl
