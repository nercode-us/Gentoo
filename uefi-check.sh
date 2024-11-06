#!/bin/bash
e=`efivar -l 2>&1 | awk '{print $2}' | sed -n '1p'`
if [ "$e" == "error" ];
then
echo "Gentoo running without UEFI."
else
echo "Gentoo running with UEFI."
fi
