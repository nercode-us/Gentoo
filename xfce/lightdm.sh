#!/bin/bash
emerge x11-misc/lightdm
emerge gui-libs/display-manager-init

cf='/etc/conf.d/display-manager'
cfnew='/etc/conf.d/display-manager.new'
n=`cat $cf | grep -n 'DISPLAYMANAGER' | tr -s ':' ' ' | awk '{print $1}' | sed -n '1p'`

ldm="DISPLAYMANAGER=\"lightdm\""

sed $n'c\'"$ldm" $cf >> $cfnew
mv $cfnew $cf

rc-update add dbus default
rc-update add display-manager default

rc-service dbus start
# rc-service display-manager start
