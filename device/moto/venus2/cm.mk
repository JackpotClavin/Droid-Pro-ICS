## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/moto/venus2/venus2.mk)
$(call inherit-product, device/moto/venus2/prebuilt/bootmenu/Bootmenu.mk)

# Inherit our vendor filez, yo.
$(call inherit-product, vendor/moto/venus2/venus2-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_venus2
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := venus2
PRODUCT_MODEL := DROID Pro
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw

# Release name and versioning
PRODUCT_RELEASE_NAME := DroidPro

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
