#!/bin/bash
cd /usr/src/linux
ls -a | grep .config

make clean
make
make modules_install
make install