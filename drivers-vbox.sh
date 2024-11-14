#!/bin/bash
# Video and Input Drivers for VMWare and VirtualBox
#===============================================================
emerge -v x11-drivers/xf86-video-fbdev --autounmask-write
emerge -v x11-drivers/xf86-input-vmmouse --autounmask-write
emerge -v x11-drivers/xf86-video-vmware --autounmask-write

echo u | dispatch-conf

emerge -v x11-drivers/xf86-video-vmware
emerge -v x11-drivers/xf86-input-vmmouse
emerge -v x11-drivers/xf86-video-fbdev
#===============================================================
emerge -v x11-drivers/xf86-video-vboxvideo --autounmask-write
echo u | dispatch-conf
emerge -v x11-drivers/xf86-video-vboxvideo
#===============================================================

