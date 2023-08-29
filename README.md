# TWRP device tree for Lenovo Xiaoxin Pad Pro 2021 (TB-J716F)

The Lenovo Xiaoxin Pad Pro 2021 is a high-end Android tablet released only in China. Other unofficial names for this tablet are Lenovo P11 Pro Plus or Lenovo P11 Pro 2021. Lenovo has not released the downstream Linux kernel sources for this device.

## Device specifications

Component              | Model
----------------------:|:-------------------------
SoC                    | Qualcomm Snapdragon 870 (SM8250-AC)
CPU                    | Octa-core (1x3.2 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.80 GHz Kryo 585)
GPU                    | Adreno 650
Memory                 | 6 GB LPDDR4X
Storage                | 128 GB
Battery                | Non-removable Li-Po 8600 mAh battery
Display                | 2560 x 1600 (90Hz 11.5" OLED)
Latest Android Version | ZUI 14 (Android 12)

## Build instructions

1. Initialize TWRP source
```
mkdir twrp-12.1
cd twrp-12.1
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
mkdir -p .repo/local_manifests
```

2. Add this to `.repo/local_manifests/p11_pro_plus.xml`
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project name="TeamWin/android_device_lenovo_p11_pro_plus" path="device/lenovo/p11_pro_plus" remote="github" revision="android-12.1"/>
</manifest>
```

3. Start downloading TWRP source
```
repo sync -j$(nproc)
```

4. Build TWRP
```
source build/envsetup.sh
lunch twrp_p11_pro_plus-eng
mka -j$(nproc) recoveryimage
```

After the build has finished, you can find the recovery image at $OUT/recovery.img and flash it with `fastboot flash recovery` while the tablet is in bootloader mode.

## Device picture

![Lenovo Xiaoxin Pad Pro 2021](https://ia902607.us.archive.org/20/items/j716f-firmware/thumbnail.png "Lenovo Xiaoxin Pad Pro 2021")
