#!/bin/bash

mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
mount --bind /run /mnt/gentoo/run
mount --make-slave /mnt/gentoo/run

cd ~
mv Gentoo-main.zip /mnt/gentoo/root/
cd /mnt/gentoo/root/
unzip Gentoo-main.zip > /dev/null 2>&1
cd Gentoo-main/
bash enter-start.sh
