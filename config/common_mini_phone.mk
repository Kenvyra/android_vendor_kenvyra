# Inherit mini common Lineage stuff
$(call inherit-product, vendor/kenvyra/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/kenvyra/config/telephony.mk)
