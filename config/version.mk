PIXELAGE_DATE_YEAR := $(shell date -u +%Y)
PIXELAGE_DATE_MONTH := $(shell date -u +%m)
PIXELAGE_DATE_DAY := $(shell date -u +%d)
PIXELAGE_DATE_HOUR := $(shell date -u +%H)
PIXELAGE_DATE_MINUTE := $(shell date -u +%M)
PIXELAGE_BUILD_DATE := $(PIXELAGE_DATE_YEAR)$(PIXELAGE_DATE_MONTH)$(PIXELAGE_DATE_DAY)-$(PIXELAGE_DATE_HOUR)$(PIXELAGE_DATE_MINUTE)

PIXELAGE_BUILDTYPE ?= UNOFFICIAL

PIXELAGE_DISPLAY_VERSION := 2.4

PIXELAGE_PLATFORM_VERSION := 15.0

PIXELAGE_VERSION := ProjectPixelage-v$(PIXELAGE_DISPLAY_VERSION)-$(PIXELAGE_BUILD)-$(PIXELAGE_PLATFORM_VERSION)-$(PIXELAGE_BUILDTYPE)-$(PIXELAGE_BUILD_DATE)

# Pixelage Platform Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.pixelage.build.date=$(BUILD_DATE) \
    ro.pixelage.build.version=$(PIXELAGE_DISPLAY_VERSION) \
    ro.pixelage.device=$(PIXELAGE_BUILD) \
    ro.pixelage.fingerprint=$(ROM_FINGERPRINT) \
    ro.pixelage.maintainer=$(PIXELAGE_MAINTAINER) \
    ro.pixelage.releasetype=$(PIXELAGE_BUILDTYPE) \
    ro.pixelage.version=$(PIXELAGE_VERSION) \
    ro.modversion=$(PIXELAGE_VERSION)
