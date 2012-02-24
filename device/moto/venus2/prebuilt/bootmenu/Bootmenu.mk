# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PREBUILT := device/moto/venus2/prebuilt

# Prebuilt files to be placed under /system/bootmenu/***
PRODUCT_COPY_FILES := \
    $(DEVICE_PREBUILT)/bootmenu/2nd-boot/sbin/ueventd:/system/bootmenu/2nd-boot/sbin/ueventd \
    $(DEVICE_PREBUILT)/bootmenu/2nd-boot/init:/system/bootmenu/2nd-boot/init \
    $(DEVICE_PREBUILT)/bootmenu/2nd-boot/init.mapphone_umts.rc:/system/bootmenu/2nd-boot/init.mapphone_umts.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.rc:/system/bootmenu/2nd-boot/init.rc \
    $(DEVICE_PREBUILT)/bootmenu/2nd-boot/ueventd.rc:/system/bootmenu/2nd-boot/ueventd.rc \
    $(DEVICE_PREBUILT)/bootmenu/binary/2nd-boot:/system/bootmenu/binary/2nd-boot \
    $(DEVICE_PREBUILT)/bootmenu/binary/2nd-init:/system/bootmenu/binary/2nd-init \
    $(DEVICE_PREBUILT)/bootmenu/binary/adbd:/system/bootmenu/binary/adbd \
    $(DEVICE_PREBUILT)/bootmenu/binary/lsof:/system/bootmenu/binary/lsof \
    $(DEVICE_PREBUILT)/bootmenu/config/bootmenu_bypass:/system/bootmenu/config/bootmenu_bypass \
    $(DEVICE_PREBUILT)/bootmenu/config/default.prop:/system/bootmenu/config/default.prop \
    $(DEVICE_PREBUILT)/bootmenu/config/default_bootmode.conf:/system/bootmenu/config/default_bootmode.conf \
    $(DEVICE_PREBUILT)/bootmenu/config/overclock.conf:/system/bootmenu/config/overclock.conf \
    $(DEVICE_PREBUILT)/bootmenu/froyo/init.mapphone_umts.rc:/system/bootmenu/froyo/init.mapphone_umts.rc \
    $(DEVICE_PREBUILT)/bootmenu/froyo/init.rc:/system/bootmenu/froyo/init.rc \
    $(DEVICE_PREBUILT)/bootmenu/images/background.png:/system/bootmenu/images/background.png \
    $(DEVICE_PREBUILT)/bootmenu/images/indeterminate1.png:/system/bootmenu/images/indeterminate1.png \
    $(DEVICE_PREBUILT)/bootmenu/images/indeterminate2.png:/system/bootmenu/images/indeterminate2.png \
    $(DEVICE_PREBUILT)/bootmenu/images/indeterminate3.png:/system/bootmenu/images/indeterminate3.png \
    $(DEVICE_PREBUILT)/bootmenu/images/indeterminate4.png:/system/bootmenu/images/indeterminate4.png \
    $(DEVICE_PREBUILT)/bootmenu/images/indeterminate5.png:/system/bootmenu/images/indeterminate5.png \
    $(DEVICE_PREBUILT)/bootmenu/images/indeterminate6.png:/system/bootmenu/images/indeterminate6.png \
    $(DEVICE_PREBUILT)/bootmenu/images/progress_empty.png:/system/bootmenu/images/progress_empty.png \
    $(DEVICE_PREBUILT)/bootmenu/images/progress_fill.png:/system/bootmenu/images/progress_fill.png \
    $(DEVICE_PREBUILT)/bootmenu/script/2nd-boot.sh:/system/bootmenu/script/2nd-boot.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/2nd-init.sh:/system/bootmenu/script/2nd-init.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/adbd.sh:/system/bootmenu/script/adbd.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/bootmode_clean.sh:/system/bootmenu/script/bootmode_clean.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/cdrom.sh:/system/bootmenu/script/cdrom.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/data.sh:/system/bootmenu/script/data.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/overclock.sh:/system/bootmenu/script/overclock.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/post_bootmenu.sh:/system/bootmenu/script/post_bootmenu.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/pre_bootmenu.sh:/system/bootmenu/script/pre_bootmenu.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/reboot_command.sh:/system/bootmenu/script/reboot_command.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/recovery.sh:/system/bootmenu/script/recovery.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/recoveryexit.sh:/system/bootmenu/script/recoveryexit.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/recovery_stable.sh:/system/bootmenu/script/recovery_stable.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/sdcard.sh:/system/bootmenu/script/sdcard.sh \
    $(DEVICE_PREBUILT)/bootmenu/script/system.sh:/system/bootmenu/script/system.sh \
    $(DEVICE_PREBUILT)/bootmenu/recovery/etc/recovery.fstab:/system/bootmenu/recovery/etc/recovery.fstab \
    $(DEVICE_PREBUILT)/bootmenu/recovery/META-INF/CERT.RSA:/system/bootmenu/recovery/META-INF/CERT.RSA \
    $(DEVICE_PREBUILT)/bootmenu/recovery/META-INF/CERT.SF:/system/bootmenu/recovery/META-INF/CERT.SF \
    $(DEVICE_PREBUILT)/bootmenu/recovery/META-INF/MANIFEST.MF:/system/bootmenu/recovery/META-INF/MANIFEST.MF \
    $(DEVICE_PREBUILT)/bootmenu/recovery/META-INF/com/google/android/update-binary:/system/bootmenu/recovery/META-INF/com/google/android/update-binary \
    $(DEVICE_PREBUILT)/bootmenu/recovery/META-INF/com/google/android/updater-script:/system/bootmenu/recovery/META-INF/com/google/android/updater-script \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/icon_clockwork.png:/system/bootmenu/recovery/res/images/icon_clockwork.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/icon_error.png:/system/bootmenu/recovery/res/images/icon_error.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/icon_installing.png:/system/bootmenu/recovery/res/images/icon_installing.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/indeterminate1.png:/system/bootmenu/recovery/res/images/indeterminate1.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/indeterminate2.png:/system/bootmenu/recovery/res/images/indeterminate2.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/indeterminate3.png:/system/bootmenu/recovery/res/images/indeterminate3.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/indeterminate4.png:/system/bootmenu/recovery/res/images/indeterminate4.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/indeterminate5.png:/system/bootmenu/recovery/res/images/indeterminate5.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/indeterminate6.png:/system/bootmenu/recovery/res/images/indeterminate6.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/progress_empty.png:/system/bootmenu/recovery/res/images/progress_empty.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/images/progress_fill.png:/system/bootmenu/recovery/res/images/progress_fill.png \
    $(DEVICE_PREBUILT)/bootmenu/recovery/res/keys:/system/bootmenu/recovery/res/keys \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/adbd:/system/bootmenu/recovery/sbin/adbd \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/e2fsck:/system/bootmenu/recovery/sbin/e2fsck \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/fix_permissions:/system/bootmenu/recovery/sbin/fix_permissions \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/killrecovery.sh:/system/bootmenu/recovery/sbin/killrecovery.sh \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/mke2fs:/system/bootmenu/recovery/sbin/mke2fs \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/nandroid-md5.sh:/system/bootmenu/recovery/sbin/nandroid-md5.sh \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/parted:/system/bootmenu/recovery/sbin/parted \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/postrecoveryboot.sh:/system/bootmenu/recovery/sbin/postrecoveryboot.sh \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/recovery:/system/bootmenu/recovery/sbin/recovery \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/sdparted:/system/bootmenu/recovery/sbin/sdparted \
    $(DEVICE_PREBUILT)/bootmenu/recovery/sbin/tune2fs:/system/bootmenu/recovery/sbin/tune2fs \
    $(DEVICE_PREBUILT)/bootmenu/recovery/recovery.fstab:/system/bootmenu/recovery/recovery.fstab

# Files to be placed under /system/etc/init.d/***
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/bootmenu/init.d/00banner:/system/etc/init.d/00banner \
    $(DEVICE_PREBUILT)/bootmenu/init.d/01sysctl:/system/etc/init.d/01sysctl \
    $(DEVICE_PREBUILT)/bootmenu/init.d/02bootmenu:/system/etc/init.d/02bootmenu \
    $(DEVICE_PREBUILT)/bootmenu/init.d/03firstboot:/system/etc/init.d/03firstboot \
    $(DEVICE_PREBUILT)/bootmenu/init.d/04modules:/system/etc/init.d/04modules \
    $(DEVICE_PREBUILT)/bootmenu/init.d/05mountsd:/system/etc/init.d/05mountsd \
    $(DEVICE_PREBUILT)/bootmenu/init.d/07camera:/system/etc/init.d/07camera \
    $(DEVICE_PREBUILT)/bootmenu/init.d/08backlight:/system/etc/init.d/08backlight \
    $(DEVICE_PREBUILT)/bootmenu/init.d/08mountdl:/system/etc/init.d/08mountdl \
    $(DEVICE_PREBUILT)/bootmenu/init.d/90multitouch:/system/etc/init.d/90multitouch

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PREBUILT)/ramdisk/default.prop:/system/bootmenu/2nd-init/default.prop \
    $(DEVICE_PREBUILT)/ramdisk/init.goldfish.rc:/system/bootmenu/2nd-init/init.goldfish.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.mapphone_cdma.rc:/system/bootmenu/2nd-init/init.mapphone_cdma.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.mapphone_umts.rc:/system/bootmenu/2nd-init/init.mapphone_umts.rc \
    $(DEVICE_PREBUILT)/ramdisk/init.rc:/system/bootmenu/2nd-init/init.rc \
    $(DEVICE_PREBUILT)/ramdisk/init:/system/bootmenu/2nd-init/init \
    $(DEVICE_PREBUILT)/ramdisk/ueventd.goldfish.rc:/system/bootmenu/2nd-init/ueventd.goldfish.rc \
    $(DEVICE_PREBUILT)/ramdisk/ueventd.mapphone_cdma.rc:/system/bootmenu/2nd-init/ueventd.mapphone_cdma.rc \
    $(DEVICE_PREBUILT)/ramdisk/ueventd.rc:/system/bootmenu/2nd-init/ueventd.rc \
    $(DEVICE_PREBUILT)/ramdisk/sbin/2nd-init:/system/bootmenu/2nd-init/sbin/2nd-init \
    $(DEVICE_PREBUILT)/ramdisk/sbin/adbd:/system/bootmenu/2nd-init/sbin/adbd \
    $(DEVICE_PREBUILT)/ramdisk/sbin/getprop:/system/bootmenu/2nd-init/sbin/getprop \
    $(DEVICE_PREBUILT)/ramdisk/sbin/hijack:/system/bootmenu/2nd-init/sbin/hijack \
    $(DEVICE_PREBUILT)/ramdisk/sbin/hijack.killall:/system/bootmenu/2nd-init/sbin/hijack.killall \
    $(DEVICE_PREBUILT)/ramdisk/sbin/stop:/system/bootmenu/2nd-init/sbin/stop
