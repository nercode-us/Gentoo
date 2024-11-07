#!/bin/bash
find /lib/modules/<kernel version>/ -type f -iname '*.o' -or -iname '*.ko' | less
