# Inherit mobile full common stuff
$(call inherit-product, vendor/pixelage/config/common_mobile_full.mk)

# Inherit tablet common stuff
$(call inherit-product, vendor/pixelage/config/tablet.mk)

$(call inherit-product, vendor/pixelage/config/wifionly.mk)
