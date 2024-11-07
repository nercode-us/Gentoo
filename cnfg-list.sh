# Don't remove Kconfig if you removed it, just reinstall gentoo-sources
cd /usr/src/linux
ls -1a | grep config | grep -v 'Kconfig'
