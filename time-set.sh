#!/bin/bash
# https://timeapi.io/swagger/index.html
# https://www.cyberciti.biz/faq/howto-set-date-time-from-linux-command-prompt/
hm=`pwd`
cd /mnt/gentoo

chronyd -q > /dev/null 2>&1

kalen=`curl --silent -X 'GET' 'https://timeapi.io/api/time/current/zone?timeZone=Europe%2FVilnius' -H 'accept: application/json' | tr ',{}' '\n' | grep '"date"' | tr '"\/' ' ' | awk '{print $5,$3,$4}' | tr -d '^\n '`

date +%m%d%Y -s "$kalen" > /dev/null 2>&1


laik=`curl --silent -X 'GET' 'https://timeapi.io/api/time/current/zone?timeZone=Europe%2FVilnius' -H 'accept: application/json' | \
tr ',{}' '\n' | grep 'dateTime'| sed 's/Time/time/g' | tr -s 'T\.' '\n' | grep -v '"'`

date +%T -s "$laik" > /dev/null 2>&1

hwclock --systohc

echo -n "Date: 	 " && date
echo -n "Hwclock: " && hwclock

cd $hm
