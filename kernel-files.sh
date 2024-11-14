#!/bin/bash
emerge sys-kernel/linux-firmware
emerge sys-firmware/sof-firmware

emerge sys-kernel/installkernel
emerge sys-kernel/gentoo-sources

emerge --config sys-kernel/gentoo-kernel
#===================================================
emerge -av sys-kernel/gentoo-kernel-bin --autounmask-write
echo u | dispatch-conf
#===================================================
emerge sys-kernel/modprobed-db
emerge sys-apps/pciutils
emerge app-crypt/sbsigntools
