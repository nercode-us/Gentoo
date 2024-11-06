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
## cd ~/Gentoo-main/
### 1 ./start-linux.sh
### 2 ./update-gentoo.sh


https://github.com/nercode-us/Gentoo/raw/refs/heads/main/Gentoo-main.zip

cd /mnt/gentoo/root/Gentoo-main/ - you can't do this simple command with script, need type manually as writen
