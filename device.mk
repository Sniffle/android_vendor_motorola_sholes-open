# Build configuration for AOSP on Nexus One
$(call inherit-product, build/target/product/generic.mk)
$(call inherit-product, vendor/motorola/sholes-open/device_sholes.mk)

PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    Gallery3D \
    GlobalSearch \
    Launcher2 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpers \
    VoiceDialer \
		libRS \
		librs_jni

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.config.ringtone=CaribbeanIce.ogg \
    ro.com.google.clientidbase=android-google \
    keyguard.no_require_sim=true \
    ro.setupwizard.mode=OPTIONAL \
		ro.media.enc.hprof.file.format=mp4 \
		ro.media.enc.hprof.codec.vid=h264 \
		ro.media.enc.hprof.codec.aud=aac \
		ro.media.enc.hprof.vid.width=720 \
		ro.media.enc.hprof.vid.height=480 \
		ro.media.enc.hprof.vid.fps=25 \
		ro.media.enc.hprof.vid.bps=3000000 \
		ro.media.enc.hprof.aud.bps=96000 \
		ro.media.enc.hprof.aud.hz=16000 \
		ro.media.enc.hprof.aud.ch=1 \
		ro.media.enc.hprof.duration=60 \
		ro.media.enc.lprof.file.format=mp4 \
		ro.media.enc.lprof.codec.vid=m4v \
		ro.media.enc.lprof.codec.aud=amrnb \
		ro.media.enc.lprof.vid.width=320 \
		ro.media.enc.lprof.vid.height=240 \
		ro.media.enc.lprof.vid.fps=15 \
		ro.media.enc.lprof.vid.bps=200000 \
		ro.media.enc.lprof.aud.bps=12200 \
		ro.media.enc.lprof.aud.hz=8000 \
		ro.media.enc.lprof.aud.ch=1 \
		ro.media.enc.lprof.duration=30 \
		ro.media.enc.file.format=3gp,mp4 \
 		ro.media.enc.vid.codec=h264,m4v,h263 \
		ro.media.enc.aud.codec=aac,amrnb \
		ro.media.enc.vid.h264.width=176,720 \
		ro.media.enc.vid.h264.height=144,480 \
		ro.media.enc.vid.h264.bps=64000,8000000 \
		ro.media.enc.vid.h264.fps=1,30 \
		ro.media.enc.vid.h263.width=176,720 \
		ro.media.enc.vid.h263.height=144,480 \
		ro.media.enc.vid.h263.bps=64000,8000000 \
		ro.media.enc.vid.h263.fps=1,30 \
		ro.media.enc.vid.m4v.width=176,720 \
		ro.media.enc.vid.m4v.height=144,480 \
		ro.media.enc.vid.m4v.bps=64000,8000000 \
		ro.media.enc.vid.m4v.fps=1,30 \
		ro.media.enc.aud.amrnb.bps=5525,12200 \
		ro.media.enc.aud.amrnb.hz=8000,8000 \
		ro.media.enc.aud.amrnb.ch=1,1 \
		ro.media.enc.aud.aac.bps=8192,96000 \
		ro.media.enc.aud.aac.hz=16000,16000 \
		ro.media.enc.aud.aac.ch=1,1 \
		ro.media.dec.aud.wma.enabled=1 \
		ro.media.dec.vid.wmv.enabled=1 \
		ro.media.cam.preview.fps=0 \
    dalvik.vm.dexopt-flags=m=y \
    net.bt.name=Android \
    ro.config.sync=yes \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt
		
		
# How this product is called in the build system
PRODUCT_NAME := sholes

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes-open

# The user-visible product name
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES

# This is a high DPI device, so add the hdpi pseudo-locale
PRODUCT_LOCALES += hdpi
