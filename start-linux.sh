#!/bin/bash

#UEFI
#mount /dev/sda1 /efi

#MBR
mount /dev/sda1 /boot

# Making CPU configs even better

cnf="/etc/portage/make.conf"

xc=`cat $cnf | grep -n 'COMMON_FLAGS="' | tr ':' ' ' | awk '{print $1}'`
xl=`cat $cnf | sed -n $xc'p' | tr -d '"' | sed 's/COMMON_FLAGS=//g'`

# In my case this cpuname taken from gcc has bug, so i commented it.
# cpuname=`gcc -march=native -Q --help=target | grep 'march=' | grep -v 'option' | awk '{print $2}'`


# You can comment line below and uncomment command on top, if you want use real your cpu name.
cpuname="native"


cpo="-march="$cpuname
cpf="COMMON_FLAGS=\"$cpo $xl\""

sed $xc'c\'"$cpf" /etc/portage/make.conf >> /etc/portage/make.conf.new
mv /etc/portage/make.conf.new /etc/portage/make.conf

