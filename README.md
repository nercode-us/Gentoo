###
https://github.com/nercode-us/Gentoo/raw/refs/heads/main/Gentoo-main.zip
###

These scripts tested on VirtualBox of Windows, scripts not perfect still, but make installation more easier.

Start Gentoo installation, after boot, you can just run all scripts.
Scripts' names not perfect, but in most cases, you just need type ./ and first two alphabets, and press TAB... That's fast... :) Some commands can't be done by script, so you need to write manually as you can see in the list.

### links "https://github.com/nercode-us/Gentoo" 
find url below, download file Gentoo-main.zip

### unzip Gentoo-main.zip
### 0 cd Gentoo-main/
### 1 bash enter-start.sh
### 2 ./uefi-check.sh
### 3 ./disk-check.sh

### 4 ./format-sdX.sh
### 5 ./mnt-gentoo.sh
### 6 ./time-set.sh
### 7 ./get-stage3.sh
### 8 ./install-stage3.sh
### 9 ./set-configs.sh
### 10 ./mount-dirs.sh
### 11 ./remain.sh
## chroot /mnt/gentoo /bin/bash
## source /etc/profile
## export PS1="(chroot) ${PS1}"
(type slowly, and check every symbol of top command)
## cd ~/Gentoo-main/
### 1 ./start-linux.sh
### 2 ./update-gentoo.sh
### 3 ./profile-set.sh
### 4 ./cpuid-uses.sh
### 5 ./world-update.sh
### 6 ./check-depclean.sh 
(just look, if you not sure what to do)
### 7 ./local-gentoo.sh
## source /etc/profile
## export PS1="(chroot) ${PS1}"
(type slowly, and check every symbol of top command)
### 8 ./kernel-files.sh
### 9 ./compile-kernel.sh
Kernel settings for VirtualBox: https://github.com/nercode-us/Gentoo/blob/main/www/vbox-kernel.txt
### make-kernel.sh




