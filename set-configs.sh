#!/bin/bash
conf="/mnt/gentoo/etc/portage/make.conf"

xc=`cat $conf | grep -n 'COMMON_FLAGS="' | tr ':' ' ' | awk '{print $1}'`
xl=`cat $conf | sed -n $xc'p' | tr -d '"' | sed 's/COMMON_FLAGS=//g'`

x=`nproc`
y=$(($x+1))
mkf="MAKEOPTS=\"-j$x -l$y\""

echo $mkf >> /mnt/gentoo/etc/portage/make.conf

cp --dereference /etc/resolv.conf /mnt/gentoo/etc/


 
