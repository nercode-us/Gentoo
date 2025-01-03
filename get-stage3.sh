#!/bin/bash
hm=`pwd`
cd /mnt/gentoo

url="https://distfiles.gentoo.org/releases/amd64/autobuilds/current-stage3-amd64-desktop-openrc/"
stg=`curl --silent $url | tr ' ' '\n' | grep 'desktop-openrc' | tr '"' ' ' | awk '{print $2}' | grep -v -e '\.asc' -e 'sha256' -e 'DIGE' -e 'CONTE' -e '\.txt'`
sha=`curl --silent $url | tr ' ' '\n' | grep 'desktop-openrc' | tr '"' ' ' | awk '{print $2}' | grep -v -e '\.asc' -e 'DIGE' -e 'CONTE' -e '\.txt' | grep 'sha256'`
dig=`curl --silent $url | tr ' ' '\n' | grep 'desktop-openrc' | tr '"' ' ' | awk '{print $2}' | grep -v -e '\.asc' -e 'sha256' -e 'CONTE' -e '\.txt' | grep 'DIGE'`
asc=`curl --silent $url | tr ' ' '\n' | grep 'desktop-openrc' | tr '"' ' ' | awk '{print $2}' | grep -v -e 'sha256' -e 'CONTE' -e '\.txt' -e 'DIGE' | grep '\.asc' | grep $stg`

# Complete URLS
stage3=$url$stg
sha256=$url$sha
digests=$url$dig
ascu=$url$asc

# Wget commands
wget "$stage3"
wget -q "$sha256"
wget -q "$digests"
wget -q "$ascu"

#Checking files
openssl dgst -r -sha512 $stg
sha256sum --check $sha | grep $stg
gpg --import /usr/share/openpgp-keys/gentoo-release.asc > /dev/null 2>&1
wget -O - https://qa-reports.gentoo.org/output/service-keys.gpg | gpg --import > /dev/null 2>&1
#gpg --verify $asc
#gpg --verify $dig
#gpg --verify $sha

cd $hm
