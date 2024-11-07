#!/bin/bash
name="tux"
echo $name > /etc/hostname

emerge net-misc/dhcpcd

rc-update add dhcpcd default
rc-service dhcpcd start

emerge --noreplace net-misc/netifrc

#-----------------------------------
# Network settings, for dhcp
#
conf="/etc/conf.d/net"
nnc=`ip a | grep 'state UP' | tr -d ':' | awk '{print $2}'`

dp="config_"$nnc"=\"dhcp\""

echo $dp >> $conf

#----------------------------------- 

cd /etc/init.d
ln -s net.lo net.$nnc
rc-update add net.$nnc default