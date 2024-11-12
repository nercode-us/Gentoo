###
https://github.com/nercode-us/Gentoo/raw/refs/heads/main/Gentoo-main.zip
###

These scripts tested on VirtualBox of Windows, scripts not perfect still, but make installation more easier.

Start Gentoo installation, after boot, you can just run all scripts.
Scripts' names not perfect, but in most cases, you just need type ./ and first two alphabets, and press TAB... That's fast... :) Some commands can't be done by script, so you need to write manually as you can see in the list.

### links "https://github.com/nercode-us/Gentoo" 
find url below, download file Gentoo-main.zip

### unzip Gentoo-main.zip
### cd Gentoo-main/
### bash enter-start.sh
### ./uefi-check.sh
### ./disk-check.sh
### ./format-sdX.sh
### ./mnt-gentoo.sh
### ./time-set.sh
### ./get-stage3.sh
### ./install-stage3.sh
### ./set-configs.sh
### ./mount-dirs.sh
### ./remain.sh
## chroot /mnt/gentoo /bin/bash
## source /etc/profile
## export PS1="(chroot) ${PS1}"
(type slowly, and check every symbol of top command)
## cd ~/Gentoo-main/
### ./start-linux.sh
### ./update-gentoo.sh
### ./mirrors-sets.sh
### ./profile-set.sh
### ./cpuid-uses.sh
### ./world-update.sh
./check-depclean.sh 
(just look, if you not sure what to do)
### ./local-gentoo.sh
## source /etc/profile
## export PS1="(chroot) ${PS1}"
(type slowly, and check every symbol of top command)
### ./kernel-files.sh
### ./config-kernel.sh
### cd /usr/src/linux
### make menuconfig
Kernel settings for VirtualBox: https://github.com/nercode-us/Gentoo/blob/main/www/vbox-kernel.txt
### make
### make modules_install
### make install
### ./list-modules.sh
### ./fstab-set.sh
### ./net-configs.sh
### ./final-steps.sh
### ./virtual-box.sh
### ./add-users.sh
### ./unmount-linux.sh
### poweroff
Remove ISO image from Storage settings, and start Gentoo again.
Enjoy Gentoo... :) 




