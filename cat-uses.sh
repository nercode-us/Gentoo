#!/bin/bash
echo "cat /mnt/gentoo/etc/portage/make.conf"
cat /mnt/gentoo/etc/portage/make.conf | grep -v -e '\#' -e '\$' | grep '.'

x=`nproc`
y=$(($x+1))
echo "MAKEOPTS=\"-j$x -l$y\"" >> /etc/portage/make.conf

echo "/etc/portage/make.conf"
cat /etc/portage/make.conf | grep -v -e '\#' -e '\$' | grep '.'


