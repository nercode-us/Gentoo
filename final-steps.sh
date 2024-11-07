#!/bin/bash
emerge app-admin/sysklogd
rc-update add sysklogd default

emerge sys-process/cronie
rc-update add cronie default

emerge sys-apps/mlocate
emerge app-shells/bash-completion

emerge net-misc/chrony
rc-update add chronyd default

emerge sys-fs/dosfstools
emerge sys-block/io-scheduler-udev-rules

emerge net-misc/dhcpcd

emerge --verbose sys-boot/grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg