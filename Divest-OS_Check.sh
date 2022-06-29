#!/bin/bash

echo "OTA .zip"
stat -c '%Y' ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip
ls ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip
cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip.sha512sum
stat -c '%s' ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip
echo "recovery .img"
ls ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-recovery.img
