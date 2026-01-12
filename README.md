# TWRP Device Tree for Red Magic 6S Pro (NX669S)

## Device Specifications

| Feature | Specification |
|---------|---------------|
| Device | Red Magic 6S Pro |
| Codename | NX669S |
| SoC | Qualcomm Snapdragon 888+ (SM8350-AC) |
| CPU | Kryo 680, up to 2.995 GHz |
| GPU | Adreno 660 |
| RAM | 8/12/16 GB |
| Storage | 128/256/512 GB (UFS 3.1) |
| Display | 6.8" AMOLED, 165Hz, 2400x1080 |
| Android | 11 (RedMagic OS 4.5) |
| Kernel | 5.4.x |

## Features

- [x] Decryption (FBE)
- [x] ADB
- [x] MTP
- [x] Vibration
- [x] Fastbootd
- [x] A/B Slot Switch
- [x] Flashing ZIP/Images

## Build Instructions

### 1. Setup Build Environment
```bash
# Ubuntu 20.04/22.04
sudo apt install git-core gnupg flex bison build-essential zip curl zlib1g-dev \
    libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev \
    libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig python3 python-is-python3
```

### 2. Sync TWRP Source
```bash
mkdir twrp && cd twrp
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc)
```

### 3. Clone Device Tree
```bash
git clone https://github.com/piashmsubd/android_device_nubia_NX669S_twrp.git device/nubia/NX669S
```

### 4. Build Recovery
```bash
source build/envsetup.sh
lunch twrp_NX669S-eng
mka recoveryimage -j$(nproc)
```

### 5. Flash Recovery
```bash
# Boot to bootloader
adb reboot bootloader

# Flash recovery
fastboot flash vendor_boot out/target/product/NX669S/vendor_boot.img

# Or boot temporarily
fastboot boot out/target/product/NX669S/recovery.img
```

## Credits

- [TeamWin Recovery Project](https://twrp.me/)
- [Nubia](https://www.nubia.com/)

## License

Apache License 2.0
