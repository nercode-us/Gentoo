#!/bin/bash
cat /mnt/gentoo/etc/portage/make.conf | grep -v -e '\#' -e '\$' | grep '.'

cat /etc/portage/make.conf
