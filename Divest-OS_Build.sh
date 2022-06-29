#!/bin/bash

git pull;
cd ~/android/DivestOS;
git pull;
cp Scripts/LineageOS-17.1/CVE_Patchers/android_kernel_xiaomi_sm6150.sh Scripts/LineageOS-19.1/CVE_Patchers/;
cd Build/LineageOS-19.1;
source ../../Scripts/init.sh;
resetWorkspace;
patchWorkspace;
# Optional
repopick -i 329033; #Trebuchet: implement hidden & protected apps
buildDevice davinci;
