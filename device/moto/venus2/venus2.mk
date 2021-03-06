# This is the product configuration for a full venus2
DEVICE_PREBUILT := device/moto/venus2/prebuilt

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/venus2/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_PACKAGES := \
    rild \
    libril \
    libreference-ril

# Audio
PRODUCT_COPY_FILES += \
    device/moto/venus2/audio/libaudio.so:/system/lib/libaudio.so \
    device/moto/venus2/audio/liba2dp.so:/system/lib/liba2dp.so

PRODUCT_PACKAGES += \
    audio.primary.omap3 \
    libaudiohw_legacy \
    audio.a2dp.default \
    Torch \
    camera.venus2 \
    libaudioutils

# Modem
PRODUCT_PACKAGES += \
    libreference-cdma-sms \
    radiooptions

# HW Libs
PRODUCT_PACKAGES += \
    hwcomposer.default

# Wifi
PRODUCT_PACKAGES += \
    libCustomWifi \
    wlan_cu \
    wlan_loader

PRODUCT_PACKAGES += \
    Superuser \
    su \
    hijack-boot.zip

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Ramdisk Files
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/bin/hijack:system/bin/hijack \
    $(DEVICE_PREBUILT)/bin/bootmenu:system/bin/bootmenu \
    $(DEVICE_PREBUILT)/bin/adbd:system/bin/adbd \
    $(DEVICE_PREBUILT)/bin/hijack.log_dump:system/bin/hijack.log_dump \
    $(DEVICE_PREBUILT)/ramdisk/default.prop:root/default.prop \
    $(DEVICE_PREBUILT)/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.rc:root/init.rc \
    $(DEVICE_PREBUILT)/ramdisk/init:root/init \
    $(DEVICE_PREBUILT)/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(DEVICE_PREBUILT)/ramdisk/ueventd.mapphone_cdma.rc:root/ueventd.mapphone_cdma.rc \
    $(DEVICE_PREBUILT)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(DEVICE_PREBUILT)/ramdisk/sbin/2nd-init:root/sbin/2nd-init \
    $(DEVICE_PREBUILT)/ramdisk/sbin/adbd:root/sbin/adbd \
    $(DEVICE_PREBUILT)/ramdisk/sbin/getprop:root/sbin/getprop \
    $(DEVICE_PREBUILT)/ramdisk/sbin/hijack:root/sbin/hijack \
    $(DEVICE_PREBUILT)/ramdisk/sbin/hijack.killall:root/sbin/hijack.killall \
    $(DEVICE_PREBUILT)/ramdisk/sbin/stop:root/sbin/stop

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilts
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    $(DEVICE_PREBUILT)/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(DEVICE_PREBUILT)/etc/egl.cfg:system/etc/egl.cfg \
    $(DEVICE_PREBUILT)/etc/gps.conf:system/etc/gps.conf \
    $(DEVICE_PREBUILT)/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(DEVICE_PREBUILT)/etc/powervr.ini:system/etc/powervr.ini \
    $(DEVICE_PREBUILT)/etc/vold.fstab:system/etc/vold.fstab \
    $(DEVICE_PREBUILT)/etc/fstab:system/etc/fstab \
    $(DEVICE_PREBUILT)/media/bootanimation.zip:system/media/bootanimation.zip

# Graphics
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/imgtec/pvrsrvinit:system/bin/pvrsrvinit \
    $(DEVICE_PREBUILT)/imgtec/libEGL_POWERVR_SGX530_125.so:system/lib/egl/libEGL_POWERVR_SGX530_125.so \
    $(DEVICE_PREBUILT)/imgtec/libGLESv1_CM_POWERVR_SGX530_125.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
    $(DEVICE_PREBUILT)/imgtec/libGLESv2_POWERVR_SGX530_125.so:system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
    $(DEVICE_PREBUILT)/imgtec/libglslcompiler.so:system/lib/libglslcompiler.so \
    $(DEVICE_PREBUILT)/imgtec/libHPImgApi.so:system/lib/libHPImgApi.so \
    $(DEVICE_PREBUILT)/imgtec/libIMGegl.so:system/lib/libIMGegl.so \
    $(DEVICE_PREBUILT)/imgtec/libpvr2d.so:system/lib/libpvr2d.so \
    $(DEVICE_PREBUILT)/imgtec/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    $(DEVICE_PREBUILT)/imgtec/libsrv_init.so:system/lib/libsrv_init.so \
    $(DEVICE_PREBUILT)/imgtec/libsrv_um.so:system/lib/libsrv_um.so \
    $(DEVICE_PREBUILT)/imgtec/libusc.so:system/lib/libusc.so \
    $(DEVICE_PREBUILT)/imgtec/libeglinfo.so:system/lib/egl/libeglinfo.so \
    $(DEVICE_PREBUILT)/imgtec/libgles1_texture_stream.so:system/lib/egl/libgles1_texture_stream.so \
    $(DEVICE_PREBUILT)/imgtec/libgles2_texture_stream.so:system/lib/egl/libgles2_texture_stream.so \
    $(DEVICE_PREBUILT)/imgtec/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so

# Key Layouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/usr/idc/cpcap-key.idc:system/usr/idc/cpcap-key.idc \
    $(DEVICE_PREBUILT)/usr/idc/qtouch-touchscreen.idc:system/usr/idc/qtouch-touchscreen.idc \
    $(DEVICE_PREBUILT)/usr/idc/sholes-keypad.idc:system/usr/idc/sholes-keypad.idc \
    $(DEVICE_PREBUILT)/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    $(DEVICE_PREBUILT)/usr/keylayout/qtouch-touchscreen.kl:system/usr/keylayout/qtouch-touchscreen.kl \
    $(DEVICE_PREBUILT)/usr/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
    $(DEVICE_PREBUILT)/usr/keychars/cpcap-key.kcm:system/usr/keychars/cpcap-key.kcm \
    $(DEVICE_PREBUILT)/usr/keychars/qtouch-touchscreen.kcm:system/usr/keychars/qtouch-touchscreen.kcm \
    $(DEVICE_PREBUILT)/usr/keychars/sholes-keypad.kcm:system/usr/keychars/sholes-keypad.kcm

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US

# these need to be here for the installer, just put them here for now
PRODUCT_COPY_FILES += \
    device/moto/venus2/releaseutils/mke2fs:system/bin/mke2fs \
    device/moto/venus2/releaseutils/tune2fs:system/bin/tune2fs \
    device/moto/venus2/releaseutils/check_kernel:system/etc/releaseutils/check_kernel \
    device/moto/venus2/releaseutils/finalize_release:system/etc/finalize_release

# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/moto/venus2/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.ril=yes \
    persist.ril.mux.noofchannels=8 \
    persist.ril.mux.ttydevice=/dev/ttyS0 \
    persist.ril.modem.ttydevice=/dev/usb/tty1-3:1.4 \
    persist.ril.features=0x0E \
    persist.ril.mux.retries=500 \
    persist.ril.mux.sleep=2 \
    ro.product.multi_touch_enabled=true \
    ro.product.max_num_touch=2 \
    ro.telephony.sms_segment_size=160 \
    ro.setupwizard.mode=OPTIONAL \
    ro.com.google.gmsversion=2.2_r7 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=1000 \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.clientid=android-motorola \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.clientidbase.am=android-verizon \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.cdma.home.operator.numeric=310004 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.config.vc_call_vol_steps=10 \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.media.camcorder.d1NTSC=3gp,h264,30,6000000,aac,96000,44100,2 \
    ro.media.camcorder.vga=3gp,h264,30,4000000,aac,96000,44100,2 \
    ro.media.camcorder.cif=3gp,h264,30,1500000,aac,96000,44100,2 \
    ro.media.camcorder.qvga=3gp,h264,15,500000,aac,32000,16000,2 \
    ro.media.camcorder.mms=3gp,h264,15,128000,amrnb,12200,8000,1 \
    ro.media.camcorder.mmsres=qvga \
    ro.media.capture.maxres=5m \
    ro.media.capture.flash=led \
    ro.media.capture.flashMinV=3500000 \
    ro.media.capture.classification=classI \
    ro.media.capture.flashIntensity=45 \
    ro.media.capture.torchIntensity=45 \
    ro.media.capture.fast.fps=4 \
    ro.media.capture.slow.fps=60 \
    ro.media.capture.flip=horizontalandvertical \
    ro.media.capture.useDFR=1 \
    ro.media.capture.shuttertone=1 \
    ro.media.capture.noSensorLSC=1 \
    ro.media.sensor.orient=90 \
    ro.media.panorama.defres=2592x1456 \
    ro.media.panorama.frameres=848x480 \
    ro.ril.ntmodeglobal=true \
    persist.ril.pppd.start.fail.max=16 \
    mobiledata.interfaces=ppp0 

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/moto/venus2/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, hardware/ti/omap3/Android.mk)
$(call inherit-product, vendor/moto/venus2/venus2-vendor.mk)
$(call inherit-product, device/moto/venus2/prebuilt/bootmenu/Bootmenu.mk)
$(call inherit-product-if-exists, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := cm_venus2
PRODUCT_DEVICE := venus2
