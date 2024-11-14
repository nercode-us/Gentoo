#!/bin/bash
# Video and Input Drivers for VMWare and VirtualBox
ucnfg="/etc/portage/package.use/drivers"
#===============================================================
echo "media-libs/mesa xa" >> $ucnfg

emerge -v x11-drivers/xf86-video-vmware
emerge -v x11-drivers/xf86-input-vmmouse
emerge -v x11-drivers/xf86-video-fbdev
#===============================================================
# emerge -v x11-drivers/xf86-video-vboxvideo
#===============================================================

