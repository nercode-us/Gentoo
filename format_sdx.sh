
dsk=`lsblk | grep disk | awk '{print $1}'`
dsk2=`fdisk -l | grep 'Disk' | grep $dsk | awk '{print $2}' | tr -s '\/:' ' ' | awk '{print $2}'`

if [ "$dsk" == "$dsk2" ];
then
disk="/dev/"$dsk
echo "Atpazintas diskas /dev/"$dsk
else
echo "Radau diskus: "$dsk" - "$dsk2
echo -n "Nesugebejau atpazinti disko, nurodyk pavadinima /dev/sdX: "
read disk
fi

size=`fdisk -l | grep 'Disk' | grep $disk | awk '{print $3,$4}' | tr -d ',' | tr -s '\.' ' ' | awk '{print $1,$3}'`
echo "Disko dydis: "$size"Gib"


echo -n "/boot size in Gib numbers (1...9): "
read bts
btz="+"$bts"G"
(echo n ; echo p ; echo 1 ; echo ; echo $btz ; echo a ; echo p ; echo w) | fdisk $disk >> out.txt
boot=$disk"1"
cat out.txt | grep $boot
rm -f out.txt


echo -n "/swap size Gib numbers (1...16): "
read sws
swz="+"$sws"G"
(echo n ; echo p ; echo 2 ; echo ; echo $swz ; echo t ; echo 2 ; echo 82 ; echo p ; echo w) | fdisk $disk >> out.txt
swap=$disk"2"
cat out.txt | grep $swap
rm -f out.txt



xx=`echo $size | awk '{print $1}'`
echo $xx
rtx=$(( $xx - $sws - $bts))
echo "Likes Particijos / dydis bus: "$rtx" Gib"
