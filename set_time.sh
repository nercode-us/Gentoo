# https://timeapi.io/swagger/index.html
# https://www.cyberciti.biz/faq/howto-set-date-time-from-linux-command-prompt/


date +%T -s "`curl --silent -X 'GET' 'https://timeapi.io/api/time/current/zone?timeZone=Europe%2FVilnius' -H 'accept: application/json' | \
tr ',' '\n' | grep 'dateTime'| sed 's/Time/time/g' | tr -s 'T\.' '\n' | grep -v '"'`"