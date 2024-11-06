#!/bin/bash
cd /usr/src/linux
make && make modules_install
make install
