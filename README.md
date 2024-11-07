This scripts tested on VirtualBox on Windows, these scripts not perfect still, but makes installation more easy.

Start Gentoo installation, after boot, you can just run all scripts.
### links "https://github.com/nercode-us/Gentoo" 
find url below, download file Gentoo-main.zip

### 0 unzip Gentoo-main.zip
### 1 bash enter-start.sh
### 2 ./uefi-check.sh
### 3 ./disk-check.sh

### 4 ./format-sdX.sh
### 5 ./mnt-gentoo.sh
### 6 ./set-time.sh
### 7 ./get-stage3.sh
### 8 ./install-stage3.sh
### 9 ./configs-set.sh
### 10 ./mount-dirs.sh
### 11 ./remain.sh
## chroot /mnt/gentoo /bin/bash
## source /etc/profile
## export PS1="(chroot) ${PS1}"
(check every symbol of top command)
## cd ~/Gentoo-main/
### 1 ./start-linux.sh
### 2 ./update-gentoo.sh
### 3 ./profile-set.sh
### 4 ./cpuid.sh
### 5 ./world-update.sh
### 6 ./check-depclean.sh (just look, if you not sure what to do)
### 7 ./local-gentoo.sh
## source /etc/profile
## export PS1="(chroot) ${PS1}"
### 8 ./kernel-files.sh
### 9 ./compile-kernel.sh
### make-kernel.sh


https://github.com/nercode-us/Gentoo/raw/refs/heads/main/Gentoo-main.zip

