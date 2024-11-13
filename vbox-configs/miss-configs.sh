#!/bin/bash

hm=`pwd`

if [ ! -f $hm/.config ]
then
cp /usr/src/linux/.config $hm/
fi


file1="vbox-settings.txt"
file2=".config"

xn=`cat $file1 | grep -n '' | tail -n 1 | tr -s ':' ' ' | awk '{print $1}'`
for (( i=1; i<=xn; i++))
do
cnf=`cat $file1 | sed -n $i'p' | sed 's/=/= /g' | awk '{print $2}'`
cnf1=`cat $file1 | sed -n $i'p' | awk '{print $2}'`
cnk=`cat $file1 | sed -n $i'p' | awk '{print $1}'`

cnf2=`cat $file2 | grep $cnf`
cn2=`cat $file2 | grep -n $cnf | tr -s ':' ' ' | awk '{print $1}'`

if [ "$cnf1" == "$cnf2" ]
then
echo "OK : "$cnf2
else
echo ;
echo "#===================================================================================="
echo "NOT OK : #$cnk" $i":"$cnf1 "!=" $cn2":"$cnf2
echo "#===================================================================================="
cat $cnk".txt"
echo -e "\n"
echo "#====================================================================================="
fi
done
