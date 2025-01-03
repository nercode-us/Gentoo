#!/bin/bash
# https://wiki.gentoo.org/wiki/Mirrorselect
# https://dev.gentoo.org/~zmedico/portage/doc/man/emerge.1.html
# https://www.gentoo.org/downloads/mirrors/

emerge-webrsync
emerge --sync

emerge --update sys-apps/portage
mkdir /etc/portage/repos.conf
cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf

emerge app-text/wgetpaste
