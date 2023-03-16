# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/kenvyra/config/common.mk)

# Include AOSP audio files
include vendor/kenvyra/config/aosp_audio.mk

# Include Lineage audio files
include vendor/kenvyra/config/lineage_audio.mk

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
# GApps
else ifeq ($(KENVYRA_GAPPS), true)
    $(call inherit-product-if-exists, vendor/gms/products/gms.mk)
    $(call inherit-product-if-exists, vendor/extra/pixel-framework/config.mk)
# Vanilla
else
    PRODUCT_PACKAGES += \
        GmsCompat
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

# Customizations
PRODUCT_PACKAGES += \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay \
    LineageNavigationBarNoHint

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    LineageBlackTheme \
    ThemePicker \
    ThemesStub
