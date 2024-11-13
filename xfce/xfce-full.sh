#!/bin/bash

base="xfce-base/*"
extra="xfce-extra/*"

emerge -v `emerge -s $base | grep -v -e 'License' -e 'Description' -e 'available' \
| sed 's/Latest version installed: //g' | sed 's/Size of files: //g' | sed 's/Homepage:      //g' \
| sed 's/\[ Not Installed \]/\{Not Installed\}/g' | sed 's/\[ Masked \]/\{Masked\}/g' | tr -s '\n' ' ' \
| sed 's/*/\n*/g' | tr -s '[]' '\n' | grep '{Not Installed}' | grep -v 'Masked'`

emerge -v `emerge -s $extra | grep -v -e 'License' -e 'Description' -e 'available' \
| sed 's/Latest version installed: //g' | sed 's/Size of files: //g' | sed 's/Homepage:      //g' \
| sed 's/\[ Not Installed \]/\{Not Installed\}/g' | sed 's/\[ Masked \]/\{Masked\}/g' | tr -s '\n' ' ' \
| sed 's/*/\n*/g' | tr -s '[]' '\n' | grep '{Not Installed}' | grep -v 'Masked'`