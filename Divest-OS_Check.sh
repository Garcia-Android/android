#!/bin/bash

datetime=$(stat -c '%Y' ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip)
filename=$(find ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip -type f -exec basename {} \;)
id=$(cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip.md5sum | cut -c -32)
romtype="dos"
size=$(stat -c '%s' ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip)
version="19.1"
echo "**SHA512 checksums:**"
echo ""
cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-ota.zip.sha512sum
echo ""
cat ~/android/DivestOS/Builds/LineageOS-19.1/release_keys/divested-UNOFFICIAL-*-recovery.img.sha512sum
echo ""
echo "json"
echo "{
  \"response\": [
    {
      \"datetime\": ${datetime},
      \"filename\": \"${filename}\",
      \"id\": \"${id}\",
      \"romtype\": \"${romtype}\",
      \"size\": ${size},
      \"url\": \"\",
      \"version\": \"${version}\"
    }
  ]
}"
