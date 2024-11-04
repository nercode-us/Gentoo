#!/bin/bash
home=`pwd`
cd /mnt/gentoo

tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner -C /mnt/gentoo

cd $home
