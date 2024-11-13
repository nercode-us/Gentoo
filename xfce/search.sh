emerge -s $1 | grep -v -e 'License' -e 'Description' -e 'available' \
| sed 's/Latest version installed: //g' | sed 's/Size of files: //g' | sed 's/Homepage:      //g' \
| sed 's/\[ Not Installed \]/\{Not Installed\}/g' | sed 's/\[ Masked \]/\{Masked\}/g' | tr -s '\n' ' ' \
| sed 's/*/\n*/g' | tr -s '[]' '\n' | grep '{Not Installed}' | grep -v 'Masked'
