#!/bin/bash
# ls -l /usr/share/zoneinfo
# ls -l /usr/share/zoneinfo/Europe/

ln -sf ../usr/share/zoneinfo/Europe/Vilnius /etc/localtime

locale-gen
env-update && source /etc/profile && export PS1="(chroot) ${PS1}"
