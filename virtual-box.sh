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
