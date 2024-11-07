#!/bin/bash
echo "Vartotojo <root> pasword:"
passwd root
uname="friend"
echo -n "Iveskite vartotojo <friend> password:"
useradd -m -G users,wheel,audio -s /bin/bash $uname
passwd friend

gpasswd -a $uname vboxguest
gpasswd -a $uname vboxsf
gpasswd -a $uname vboxusers
