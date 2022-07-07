#!/bin/bash

mkdir -p ~/android && cd ~/android || exit;
git clone https://gitlab.com/divested-mobile/divestos-build.git DivestOS;
cd DivestOS || exit;
git submodule update --init --recursive; #must have git-lfs installed
mkdir -p Build/LineageOS-19.1/.repo/local_manifests Builds;
git apply ~/android/DivestOS-Build.patch;
cd Build/LineageOS-19.1 || exit;
cat ../../Manifests/Manifest_LAOS-19.1.xml > .repo/local_manifests/local_manifest.xml;
repo init -u https://github.com/LineageOS/android.git -b lineage-19.1;
repo sync; #This part will take a while
#Generate signing keys
#source ../../Scripts/init.sh;
#source build/envsetup.sh && breakfast lineage_davinci-user && make -j20 generate_verity_key otatools;
#source ../../Scripts/Generate_Signing_Keys.sh davinci;