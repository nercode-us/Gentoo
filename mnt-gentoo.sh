#!/bin/bash
# UEFI
# mkdir --parents /mnt/gentoo/efi


mkdir --parents /mnt/gentoo
mount /dev/sda3 /mnt/gentoo
mkdir /mnt/gentoo/tmp
chmod 1777 /mnt/gentoo/tmp

