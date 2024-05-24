#!/usr/bin/env bash

echo 'Enter AOSP BRANCH:'
read AOSPBRANCH
repo init --depth=1 -u https://android.googlesource.com/platform/manifest -b $AOSPBRANCH
repo sync -c --force-sync -j13
git clone https://github.com/Sozosha-Dev/device_motorola_corfur-kernel device/motorola/corfur
git clone https://github.com/Sozosha-Dev/android_proprietary_vendor_corfur vendor/motorola/corfur
git clone https://github.com/Sozosha-Dev/android_device_motorola_corfur device/motorola/corfur
git clone https://github.com/PixelOS-AOSP/device_qcom_sepolicy_vndr device/qcom/sepolicy_vndr
git clone https://github.com/PixelOS-AOSP/hardware_motorola hardware/motorola
. build/envsetup.sh
lunch corfur-userdebug
make otapackage
