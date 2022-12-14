# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/kenvyra/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Aperture \
    Eleven \
    Etar \
    ExactCalculator \
    Profiles \
    Seedvault

# microG
ifeq ($(KENVYRA_MICROG), true)
    PRODUCT_PACKAGES += \
        DejaVuLocationService \
        FakeStore \
        F-Droid \
        GmsCore \
        GsfProxy \
        MozillaNlpBackend \
        NominatimNlpBackend
endif

# GApps
ifeq ($(KENVYRA_GAPPS), true)
    $(call inherit-product-if-exists, vendor/gms/products/gms.mk)
endif

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    KenvyraLauncherGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    KenvyraLauncherGo
else
PRODUCT_PACKAGES += \
    KenvyraLauncher

PRODUCT_DEXPREOPT_SPEED_APPS += \
    KenvyraLauncher
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_LINEAGE_CHARGER),false)
PRODUCT_PACKAGES += \
    lineage_charger_animation \
    lineage_charger_animation_vendor
endif

# Customizations
PRODUCT_PACKAGES += \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay \
    LineageNavigationBarNoHint \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
