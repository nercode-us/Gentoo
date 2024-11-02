gp=`fdisk -l | grep Disklabel | awk '{print $3}' | sed -n '1p'`
if [ "$gp" == "gpt" ];
then
echo "Gentoo disk use UEFI."
elif [ "$gp" == "dos" ];
then
echo "Gentoo disk use DOS."
else
echo "Gentoo disk use unknown partition table ."
fi