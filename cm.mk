# Release name
PRODUCT_RELEASE_NAME := SEDPRETTYNAME

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
#If you need gsm compatibility
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/SEDMANUFACTURER/SEDNAME/full_SEDNAME.mk)

#### Set screen size
TARGET_SCREEN_HEIGHT := 768
TARGET_SCREEN_WIDTH := 1024

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SEDNAME
PRODUCT_NAME := cm_SEDNAME
PRODUCT_BRAND := SEDBRANDING
PRODUCT_MODEL := SEDPRETTYNAME
PRODUCT_MANUFACTURER := SEDMANUFACTURER

#Set build fingerprint / ID / Product Name etc
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SEDNAME BUILD_FINGERPRINT="SEDMANUFACTURER/SEDNAME/SEDNAME:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="SEDNAME-user 4.0.4 IMM76I 330937 release-keys"
