# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/kenvyra/config/common.mk)

# Include AOSP audio files
include vendor/kenvyra/config/aosp_audio.mk

# Include Lineage audio files
include vendor/kenvyra/config/lineage_audio.mk

# Default notification/alarm sounds
ifneq ($(KENVYRA_GAPPS), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg
endif

# Apps
PRODUCT_PACKAGES += \
    OpenCalc

# microG
ifeq ($(KENVYRA_MICROG), true)
    PRODUCT_PACKAGES += \
        FakeStore \
        F-Droid \
        GmsCoreMicrog \
        GsfProxy
# GApps
else ifeq ($(KENVYRA_GAPPS), true)
    $(call inherit-product, vendor/google/gms/config.mk)
    $(call inherit-product, vendor/google/pixel/config.mk)
    $(call inherit-product, vendor/extra/pixel-framework/config.mk)
# Vanilla
else
    PRODUCT_PACKAGES += \
        GmsCompat
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

PRODUCT_PACKAGES += \
    KenvyraLauncherOverlay

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
    LineageNavigationBarNoHint \
    NavigationBarMode2ButtonOverlay

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
