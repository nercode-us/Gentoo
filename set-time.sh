# https://timeapi.io/swagger/index.html
# https://www.cyberciti.biz/faq/howto-set-date-time-from-linux-command-prompt/
home=`pwd`
cd /mnt/gentoo

date +%m%d%Y -s "`curl --silent -X 'GET' 'https://timeapi.io/api/time/current/zone?timeZone=Europe%2FVilnius' -H 'accept: application/json' | \
tr ',{}' '\n' | grep '"date"' | tr '"' ' ' | tr -d '\/:' | awk '{print $2}'`"

date +%T -s "`curl --silent -X 'GET' 'https://timeapi.io/api/time/current/zone?timeZone=Europe%2FVilnius' -H 'accept: application/json' | \
tr ',' '\n' | grep 'dateTime'| sed 's/Time/time/g' | tr -s 'T\.' '\n' | grep -v '"'`"

cd $home
