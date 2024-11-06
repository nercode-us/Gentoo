echo -n "Please wait ... "
es=`eselect profile list | grep desktop | grep stable | sed -n '1p' | awk '{print $1}' | tr -d '[]'`
eselect profile set $es
getuto > /dev/null/ 2>&1
echo "Done."
