# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Kenvyra System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.kenvyra.version=$(KENVYRA_VERSION) \
    ro.kenvyra.releasetype=$(KENVYRA_BUILDTYPE) \
    ro.kenvyra.ziptype=$(KENVYRA_BUILD_ZIP_TYPE) \
    ro.kenvyra.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(KENVYRA_VERSION)

# Kenvyra Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.kenvyra.display.version=$(KENVYRA_DISPLAY_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.kenvyra.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)
