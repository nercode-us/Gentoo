echo -n "Iveskite disko pavadinima (/dev/sdX):"
fdisk -l | grep '/dev' | grep -v 'loop'
read dsk
gp=`(echo p) | fdisk $dsk | grep Disklabel | awk '{print $3}' | sed -n '1p'`
if [ "$gp" == "gpt" ];
then
echo "Gentoo disk use UEFI."
elif [ "$gp" == "dos" ];
then
echo "Gentoo disk use DOS."
else
echo "Gentoo disk use unknown partition table ."
fi
