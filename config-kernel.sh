#!/bin/bash
ek=`eselect kernel list | grep gentoo | grep linux | sed -n '1p' | awk '{print $1}' | tr -d '[]'`
eselect kernel set $ek

cd /usr/src/linux
