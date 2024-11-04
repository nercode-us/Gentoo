#!/bin/bash
echo "cat /mnt/gentoo/etc/portage/make.conf"
cat /mnt/gentoo/etc/portage/make.conf | grep -v -e '\#' -e '\$' | grep '.'
echo "/etc/portage/make.conf"
cat /etc/portage/make.conf
