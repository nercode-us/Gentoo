#!/bin/bash
fdir="/etc/fstab"
echo -e "/dev/sda1   /boot        xfs    defaults    0 2" >> $fdir
echo -e "/dev/sda2   none         swap    sw                   0 0" >> $fdir
echo -e "/dev/sda3   /            xfs    defaults,noatime              0 1" >> $fdir
echo -e "\n" >> $fdir
echo -e "/dev/cdrom  /mnt/cdrom   auto    noauto,user          0 0" >> $fdir
