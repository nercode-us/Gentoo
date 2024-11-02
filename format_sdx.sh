echo -n "Disk  /dev/sdX: "
read disk
size=`fdisk -l | grep 'Disk' | grep $disk | awk '{print $3,$4}' | tr -d ',' | tr -s '\.' ' ' | awk '{print $1,$3}'`
echo "Disko dydis:" $size


echo -n "/boot size in Gib numbers (1...9): "
read bts
btz="+"$bts"G"
(echo n ; echo p ; echo 1 ; echo ; echo $btz ; echo t ; echo 82 ; echo a ; echo p) | fdisk $disk >> out.txt
boot=$disk"1"
cat out.txt | grep $boot
rm -f out.txt


echo -n "/swap size Gib numbers (1...16): "
read sws
swz="+"$sws"G"


xx=`echo $size | awk '{print $1}'`
echo $xx
rtx=$(( $xx - $sws - $bts))
echo "Likes Particijos / dydis bus: "$rtx" Gib"
