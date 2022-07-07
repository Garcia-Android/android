#!/bin/bash

echo "ota.zip"
cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip.sha512sum
datetime=$(stat -c '%Y' ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip)
filename=$(find ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip -type f -exec basename {} \;)
id=$(cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip.md5sum)
romtype="dos"
size=$(stat -c '%s' ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip)
version="19.1"
echo ""
echo "recovery.img"
cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip.sha512sum
echo ""
echo "json"
echo "{
  \"response\": [
    {
      \"datetime\": ${datetime},
      \"filename\": ${filename},
      \"id\": ${id},
      \"romtype\": ${romtype},
      \"size\": ${size},
      \"url\": \"\",
      \"version\": ${version}
    }
  ]
}"
