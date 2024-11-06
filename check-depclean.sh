echo "!!! Don't remove file if you don't know what it does !!!"
emerge --ask --pretend --depclean | grep '=' | sed 's/=/\n=/g'
