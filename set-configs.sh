#!/bin/bash
echo "cat /mnt/gentoo/etc/portage/make.conf"
cat /mnt/gentoo/etc/portage/make.conf | grep -v -e '\#' -e '\$' | grep '.'

x=`nproc`
y=$(($x+1))
echo "MAKEOPTS=\"-j$x -l$y\"" >> /etc/portage/make.conf

# echo "/etc/portage/make.conf"
# cat /etc/portage/make.conf | grep -v -e '\#' -e '\$' | grep '.'

cpuname=`gcc -march=native -Q --help=target | grep 'march=' | grep -v 'option' | awk '{print $2}'`


#sed $x'c\oli lopop' test.txt
#cat test.txt | grep -v '#' | sed $x'c\oli lopop'
 
