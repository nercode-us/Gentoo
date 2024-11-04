#!/bin/bash
# UEFI
# mkdir --parents /mnt/gentoo/efi


mkdir --parents /mnt/gentoo
mount /dev/sda3 /mnt/gentoo
chmod 1777 /mnt/gentoo/tmp
cd /mnt/gentoo
bash ~/Gentoo-main/set_time.sh
