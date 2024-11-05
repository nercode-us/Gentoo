#!/bin/bash
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
mount --bind /run /mnt/gentoo/run
mount --make-slave /mnt/gentoo/run

chroot /mnt/gentoo /bin/bash
source /etc/profile
export PS1="(chroot) ${PS1}"

#UEFI
#mount /dev/sda1 /efi

#MBR
mount /dev/sda1 /boot
# Moving lost files again to home directory
cd ~
wget "https://github.com/nercode-us/Gentoo/raw/refs/heads/main/Gentoo-main.zip"
unzip Gentoo-main.zip > /dev/null 2>&1
cd Gentoo-main/
bash enter-start.sh
