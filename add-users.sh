#!/bin/bash
echo "Vartotojo <root> pasword:"
passwd root
uname="friend"
echo -n "Iveskite vartotojo <$uname> password:"
useradd -m -G users,wheel,audio -s /bin/bash $uname
passwd $uname

gpasswd -a $uname vboxguest
gpasswd -a $uname vboxsf
gpasswd -a $uname vboxusers
