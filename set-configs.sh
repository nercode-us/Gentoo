#!/bin/bash
lice="/mnt/gentoo/etc/portage/package.license"
conf="/mnt/gentoo/etc/portage/make.conf"
#=================================
x=`nproc`
y=$(($x+1))
mkf="MAKEOPTS=\"-j$x -l$y\""

echo $mkf >> $conf
#=================================
# vm="vmware"
vb="virtualbox"
vgpu="VIDEO_CARDS=\"$vb\""

echo $vgpu >> $conf

#=================================
echo -e "*/*  *" >> $lice

cp --dereference /etc/resolv.conf /mnt/gentoo/etc/
