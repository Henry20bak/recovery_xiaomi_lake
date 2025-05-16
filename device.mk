LOCAL_PATH := device/xiaomi/lake

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Virtual AB
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor \
    vendor_boot

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    bootctrl \
    bootctrl.recovery

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Crypto and Hardware Support
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe \
    android.hardware.gatekeeper@1.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    libion \
    vendor.mediatek.hardware.videotelephony@1.0 \
    android.hardware.graphics.composer@2.1-impl

# Host packages
PRODUCT_HOST_PACKAGES += \
    libandroidicu

# Additional Hardware Support
PRODUCT_PACKAGES += \
    libhardware \
    libhardware_legacy \
    libion.recovery

# Touch drivers
PRODUCT_PACKAGES += \
    mtk_tpd \
    libinputflinger \
    libgui \
    libtouchservice

# Crypto and Hardware Support
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@4.1-service \
    android.hardware.keymaster@4.1-impl