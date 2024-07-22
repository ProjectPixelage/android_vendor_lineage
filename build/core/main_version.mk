# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Project Pixelage System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pixelage.version=$(LINEAGE_VERSION) \
    ro.pixelage.releasetype=$(PIXELAGE_BUILDTYPE) \
    ro.pixelage.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(PIXELAGE_VERSION)

# Project Pixelage Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pixelage.display.version=$(LINEAGE_DISPLAY_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pixelage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pixelage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
