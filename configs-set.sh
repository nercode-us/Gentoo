#!/bin/bash
conf="/mnt/gentoo/etc/portage/make.conf"

x=`nproc`
y=$(($x+1))
mkf="MAKEOPTS=\"-j$x -l$y\""

echo $mkf >> $conf

cp --dereference /etc/resolv.conf /mnt/gentoo/etc/
