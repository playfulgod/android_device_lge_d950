## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d959/d959.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d959
PRODUCT_NAME := cm_d959
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D959
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/z_tmo_us/zee:4.4.2/KOT49I.D95920h/D95920h.1398665038:user/release-keys \
    PRIVATE_BUILD_DESC="z_tmo_us-user 4.4.2 KOT49I.D95920h D95920h.1398665038 release-keys"

PRODUCT_PACKAGES += Torch
