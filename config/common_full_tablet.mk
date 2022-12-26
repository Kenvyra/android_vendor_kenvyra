# Inherit full common Lineage stuff
$(call inherit-product, vendor/kenvyra/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/kenvyra/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/kenvyra/overlay/dictionaries

$(call inherit-product, vendor/kenvyra/config/telephony.mk)
