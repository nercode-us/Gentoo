#!/bin/bash
emerge app-emulation/virtualbox
emerge app-emulation/virtualbox-modules

emerge app-emulation/virtualbox-additions
emerge app-emulation/virtualbox-guest-additions

rc-update add virtualbox-guest-additions default
rc-update add dbus default

emerge sys-apps/usermode-utilities
emerge net-misc/bridge-utils

modprobe vboxdrv
modprobe vboxnetadp
modprobe vboxnetflt

uname="friend"
echo -n "Iveskite vartotojo <friend> password:"
useradd -m -G users,wheel,audio -s /bin/bash $uname
passwd friend

gpasswd -a $uname vboxguest
gpasswd -a $uname vboxsf
gpasswd -a $uname vboxusers